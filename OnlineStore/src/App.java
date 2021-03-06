import java.sql.*;
import java.util.Scanner;

/**
 * TEAM RIT DATABASE PROJECT
 * Course: CS157A 10:30 AM
 * Written by: Tai Dao, Izzy Moriguchi, Rana Shamoun
 *
 * Note to instructor: Our database is on AWS so there's no need to worry about having to source a local data.sql file.
 */

public class App {
	private static Connection connection = null;
	private static Statement stmt = null;
  
	public static void main(String[] args) {
		// System.out.println("MySQL JDBC Driver Registered!");
		connection = null;
		stmt = null;

		try {
			connection = DriverManager.getConnection(
					"jdbc:mysql://rds-mysql-onlinestore.c3pd0vboyy5j.us-west-1.rds.amazonaws.com:3306" + "/STORE",
					"root", "cs157arit");
			stmt = connection.createStatement();

            createProcedures(stmt);
			printMainMenu(stmt); /* Print's the menu options. Functional Requirements are done here. */

		} catch (SQLException e) {
			System.out.println("Connection Failed! Check output console");
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			} // nothing we can do
			try {
				if (connection != null)
					connection.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
	}

	/**
	 * This function prints the Main Menu...
	 */
	private static void printMainMenu(Statement stmt) throws SQLException {
		boolean exitRequest = false; // for the Main Menu
		Scanner in = new Scanner(System.in);

		while (!exitRequest) {
			System.out.println("Welcome to Store\n" + "Are you a customer or a business owner?\n" + "    1. Customer\n"
					+ "    2. Business owner\n" + "    3. Exit Store ...");

			int userLevel = in.nextInt();

			if (userLevel == 1) {
				printCustomerMenu(stmt);
			} else if (userLevel == 2) {
				printBusinessOwnerMenu(stmt);
			} else {
				System.out.println("Program will now exit. Goodbye!!!");
				exitRequest = true;
			}
		}
	}

	/**
	 * This function prints the Customer Menu...
	 */
	private static void printCustomerMenu(Statement stmt) throws SQLException {
		boolean exitRequested = false; // for the Customer Menu
		Scanner in = new Scanner(System.in);

		while (!exitRequested) {
			System.out.println("You are a customer.\n");
			System.out.println("What would you like to do today?\n"
                    + "   1. View top 5 rated items. \n" //
                    + "   2. View top 5 best selling items\n"
					+ "   3. View my purchase history\n"
                    + "   4. Buy items\n"
					+ "   5. Cancel a transaction\n"
                    + "   6. Logout (customer logout)\n");
			int customerOption = in.nextInt();

			switch (customerOption) {
			case 1:
				functionRequirement10(stmt);
				break;
			case 2:
				functionRequirement14(stmt);
				break;
			case 3:
				functionRequirement17(stmt);
				break;
			case 4:
			    buyItem(stmt);
			    break;
			case 5:
			 	functionRequirement15(stmt);
			case 6:
				exitRequested = true;
				break;
			}
		}
	}

	/**
	 * This function prints the Business Owner Menu...
	 */
	private static void printBusinessOwnerMenu(Statement stmt) throws SQLException {
		boolean exitRequested = false; // for the Customer Menu
		Scanner in = new Scanner(System.in);

		while (!exitRequested) {
			System.out.println("You are a business owner.\n");
			System.out.println("What would you like to do today?\n" + "   1. Show top 5 customers\n"
					+ "   2. Show the total revenue of high-value items sold (items that are priced over $50)\n"
					+ "   3. Show top 5 worst selling items\n" + "   4. Show how much $ was lost due to missing items\n"
					+ "   5. Show the total number of missing items\n" + "   6. Show top 5 suppliers\n"
					+ "   7. Show the difference between (total $ of sales done)before and after the year 2015 \n"
					+ "   8. Show which suppliers have supplied more than 100 items\n"
					+ "   9. Show most expensive item in inventory\n" + "   10. Show my first customer\n"
					+ "   11. Show top 5 items that have the most stock\n"
					+ "   12. Show the most inactive supplier (supplied the least amount of items)\n"
                    + "   14. Show all transactions\n"
					+ "   15. Archive some customer data\n"
					+ "   16. Show all customers\n"
					+ "   17. Show archived data\n"
					+ "   18. Exit\n");

			int businessOwnerOption = in.nextInt();

			switch (businessOwnerOption) {
			case 1:
				functionRequirement1(stmt);
				break;
			case 2:
				functionRequirement2(stmt);
				break;
			case 3:
				functionRequirement3(stmt);
				break;
			case 4:
				functionRequirement4(stmt);
				break;
			case 5:
				functionRequirement5(stmt);
				break;
			case 6:
				functionRequirement6(stmt);
				break;
			case 7:
				functionRequirement7(stmt);
				break;
			case 8:
				functionRequirement8(stmt);
				break;
			case 9:
				functionRequirement9(stmt);
				break;
			case 10:
				functionRequirement12(stmt);
				break;
			case 11:
				functionRequirement13(stmt);
				break;
			case 12:
				functionRequirement16(stmt);
				break;
			case 13:
				break;
            case 14:
                showAllBillOfSale(stmt);
                break;
			case 15:
				archive();
				break;
			case 16:
				showAllCustomers(stmt);
				break;
			case 17:
				showCustomerArchive(stmt);
				break;
			case 18:
				exitRequested = true;
				break;
			}
		}
	}

	/**
	 * Functional Requirement 1: As a business manager, I want to be able to see who
	 * my top 5 customer are. (People that spends the most).
	 */
	private static void functionRequirement1(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery("SELECT C.customerid,\n" + "       C.customername,\n"
				+ "       Sum(itemprice) AS totalPrice\n" + "FROM   customers AS C,\n" + "       billofsale AS B\n"
				+ "WHERE  C.customerid = B.customerid\n" + "GROUP  BY C.customerid\n" + "ORDER  BY totalprice DESC\n"
				+ "LIMIT  5;");
		System.out.format("%-15s%-30s%-15s\n", "Customer ID", "Customer name", "Total spent");
		while (rs.next()) {
			System.out.format("%-15s%-30s%-15s\n", rs.getInt("customerid"), rs.getString("customername"),
					rs.getString("totalPrice"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 2: As a business manager, I should be able to see the
	 * total revenue of all my high-value items sold (items that are priced over
	 * $50)
	 */
	private static void functionRequirement2(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery(
				"SELECT Sum(I.itemprice) AS totalRevenue\n" + "FROM   items AS I\n" + "WHERE  I.itemprice > 50;");
		while (rs.next()) {
			System.out.println("Total revenue = " + rs.getInt("totalRevenue"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 3: As a business manager, I should be able to see
	 * which 5 items were the worst sellers (lowest qty sold)
	 */
	public static void functionRequirement3(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery(
				"SELECT billofsale.itemid,\n" + " items.itemname,\n" + "       Sum(qtyordered) AS maxqty\n"
						+ "FROM billofsale \n" + "JOIN \n" + "items \n" + "WHERE  billofsale.itemid = items.itemid\n"
						+ "GROUP  BY billofsale.itemid\n" + "ORDER  BY maxqty limit 5; \n");
		System.out.format("%-15s%-30s%-15s\n", "Item ID", "Item Name", "Quantity Sold");
		while (rs.next()) {
			System.out.format("%-15s%-30s%-15s\n", rs.getInt("billofsale.itemid"), rs.getString("items.itemname"),
					rs.getString("maxqty"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 4: As a business manager, I should be able to see how
	 * much $ was lost per items.
	 */
	private static void functionRequirement4(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery("SELECT B.itemname,\n" + "       Sum(B.itemprice * IT.qtymissing) AS TotalLoss\n"
				+ "FROM   itemgraveyard AS IT,\n" + "       items AS B\n" + "WHERE  IT.itemid = B.itemid\n"
				+ "       AND IT.qtymissing > 0\n" + "GROUP  BY( B.itemid );");
		System.out.format("%-30s%-15s\n", "Item name", "Total loss");
		while (rs.next()) {
			System.out.format("%-30s%-15s\n", rs.getString("itemname"), rs.getString("TotalLoss"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 5: As a business manager, I should be able to see the
	 * total number of items that are missing?
	 */
	private static void functionRequirement5(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery("SELECT Sum(qtymissing) AS qtyItemsMIA \n " + "FROM itemgraveyard \n;");
		while (rs.next()) {
			System.out.format("Total Number of Missing Items = " + rs.getInt("qtyItemsMIA"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 6: As a business manager, I want to see who my top 5
	 * suppliers are (supplied the most items)
	 */
	private static void functionRequirement6(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery(
				"SELECT suppliername,\n" + "       Sum(qtyordered) AS totalqtysupplied\n" + "FROM   suppliers\n"
						+ "GROUP  BY suppliername \n" + "ORDER BY totalqtysupplied DESC \n" + "LIMIT 5;\n");
		System.out.format("%-30s%-15s\n", "Supplier Name", "Quantity Supplied");
		while (rs.next()) {
			System.out.format("%-30s%-15s\n", rs.getString("suppliername"), rs.getString("totalQtySupplied"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 7: As a business owner I want to find the difference
	 * between (total $ of sales done) before and after the year 2015
	 */
	private static void functionRequirement7(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery("SELECT Max(diff.sum) - Min(diff.sum) \n" + "FROM  ((SELECT Sum(itemprice) AS sum \n"
				+ "FROM   billofsale \n" + "WHERE purchasedate < '2015-01-01') \n" + "UNION \n"
				+ "(SELECT Sum(itemprice) AS sum \n" + " FROM billofsale \n"
				+ "WHERE purchasedate >= '2015-01-01')) AS diff; \n");
		System.out.print("The difference of Sale before and after 2015 = $");
		while (rs.next()) {
			// System.out.format("The difference of Sale before and after 2015 = " +
			// rs.getString("diff");
			System.out.print(rs.getString("Max(diff.sum) - Min(diff.sum)"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 8: As a business owner I want to know which suppliers
	 * have supplied more than 100 items.
	 */
	private static void functionRequirement8(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery("SELECT  S1.suppliername , Sum(S1.qtyordered) AS totalQtyOrdered \n"
				+ "FROM   suppliers S1 \n" + "GROUP  BY S1.suppliername \n" + "HAVING totalQtyOrdered > 100; \n");

		System.out.format("%-15s%-30s\n", "Supplier Name", "Total Qutity Ordred");
		while (rs.next()) {
			System.out.format("%-15s%-30s\n", rs.getString("S1.suppliername"), rs.getString("totalQtyOrdered"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 9: As a business manager and a customer, I should be
	 * able to see which item is the most expensive
	 */
	private static void functionRequirement9(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery("SELECT itemname,\n" + " MAX(itemprice) AS itemPrice \n" + "FROM  items \n"
				+ "GROUP BY itemname \n" + "ORDER BY itemPrice DESC \n" + "LIMIT 1; \n");

		System.out.format("%-30s%-15s\n", "Item Name", "Item Price");
		while (rs.next()) {
			System.out.format("%-30s%-15s\n", rs.getString("itemname"), rs.getString("itemPrice"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 10: As a customer, I want to see the top 5 rated
	 * items.
	 */
	private static void functionRequirement10(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery("SELECT itemname, \n" + "       Avg(rating) AS avgRating \n" + "FROM   items, \n"
				+ "       reviews \n" + "WHERE  items.itemid = reviews.itemid \n" + "GROUP  BY items.itemid \n"
				+ "ORDER  BY avgrating DESC \n" + "LIMIT  5;");
		System.out.format("%-50s%-15s\n", "Items", "avgRating");
		while (rs.next()) {
			System.out.format("%-50s", rs.getString("itemname"));
			System.out.format("%-15s\n", rs.getString("avgRating"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 12: As a business manager I want to know who is my
	 * first customer?
	 */
	private static void functionRequirement12(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery(
				"SELECT customerid,\n" + " customername\n" + "FROM   customers \n" + "WHERE  customerid =\n"
						+ "(SELECT customerid \n" + "FROM billofsale \n" + "ORDER BY purchasedate \n " + "LIMIT 1);\n");
		System.out.format("%-15s%-30s\n", "Customer ID", "Customer name");
		while (rs.next()) {
			System.out.format("%-15s%-30s\n", rs.getInt("customerid"), rs.getString("customername"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 13: As a business manager, I see the top 5 items that
	 * I have the most in stock.
	 */
	private static void functionRequirement13(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery("SELECT itemname,\n" + "qtyinstock\n" + "FROM  items\n" + "ORDER BY qtyinstock DESC \n"
				+ "LIMIT 5; \n");
		System.out.format("%-15s%-30s\n", "Item Name", "Quantity In Stock");
		while (rs.next()) {
			System.out.format("%-15s%-30s\n", rs.getString("itemname"), rs.getString("qtyinstock"));
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 14: As a customer, I want to know which items are top
	 * 5 best-selling (sold the most).
	 */
	private static void functionRequirement14(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery("SELECT itemname, \n" + " billofsale.itemid, \n" + " Sum(qtyordered) AS qtyordered \n"
				+ "FROM   billofsale\n" + "JOIN\n" + " items\n" + "WHERE  billofsale.itemid = items.itemid\n"
				+ "GROUP  BY( billofsale.itemid )\n" + "ORDER BY qtyordered DESC\n" + "LIMIT 5;");

		System.out.format("%-40s%-30s%-15s\n", "Item Name", "Item Sold ID", "Quantity Ordered");
		while (rs.next()) {
			System.out.format("%-40s%-30s%-15s\n", rs.getString("itemname"), rs.getInt("billofsale.itemid"),
					rs.getString("qtyordered"));
		}
		System.out.println();

	}

	/**
	 * Functional Requirement 15: As a customer I should be able to cancel an order.
	 */
	private static void functionRequirement15(Statement stmt) throws SQLException {
		ResultSet rs;
		Scanner in = new Scanner(System.in);
		PreparedStatement preparedStatement;

		System.out.println("What is your customer ID?");
		int cid = in.nextInt();
		String query = "SELECT transactionid, qtyordered, itemid ,itemprice, purchasedate, customerid, returnsYN FROM billofsale WHERE customerid = ?;";

		preparedStatement = connection.prepareStatement(query);
		preparedStatement.setInt(1,cid);

		rs = preparedStatement.executeQuery();
		printPurchaseHistory(rs);

		System.out.println("Please type in the transactionID you want to cancel.");
		int tid = in.nextInt();
		String query2 = "DELETE FROM billofsale WHERE (transactionid = ?);";
		preparedStatement = connection.prepareStatement(query2);
		preparedStatement.setInt(1,tid);
		preparedStatement.executeUpdate();

		System.out.println("Transaction " + tid + " Has been cancelled\n");
	}

	/** PRINT PURCHASE HISTORY **/
	private static void printPurchaseHistory(ResultSet rs) throws SQLException {
		System.out.format("%-15s%-15s%-15s%-15s%-15s%-15s%-15s\n", "Transaction ID", "QTY", "Item ID", "Item Price", "Purchase Date", "CustomerID", "Returns?");
		while (rs.next()) {
			System.out.format("%-15s%-15s%-15s%-15s%-15s%-15s%-15s\n",
					rs.getString("transactionid"),
					rs.getString("qtyordered"),
					rs.getString("itemid"),
					rs.getString("itemprice"),
					rs.getString("purchasedate"),
					rs.getString("customerid"),
					rs.getString("returnsYN")
			);
		}
		System.out.println();
	}

	/**
	 * Functional Requirement 16: As a business manager, I should be able to see the
	 * lowest quantity that a supplier offers.
	 */
	private static void functionRequirement16(Statement stmt) throws SQLException {
		ResultSet rs;
		rs = stmt.executeQuery("SELECT S1.suppliername,\n" + "Sum(S1.qtyordered) AS lowestQty\n"
				+ "FROM   suppliers S1\n" + "GROUP BY S1.suppliername \n" + "ORDER BY lowestQty \n" + "LIMIT 1;\n");
		System.out.format("%-15s%-30s\n", "Supplier Name", "Quantity");
		while (rs.next()) {
			System.out.format("%-15s%-30s\n", rs.getString("S1.suppliername"), rs.getString("lowestQty"));
		}
		System.out.println();
	}

	/**
	 * TODO Functional Requirement 17: As a customer, I should be able to view my
	 * purchase history.
	 */
	public static void functionRequirement17(Statement stmt) throws SQLException {
		ResultSet rs;
		Scanner in = new Scanner(System.in);
		PreparedStatement preparedStatement;

		System.out.println("What is your customer ID?");
		int cid = in.nextInt();
		String query = "SELECT transactionid, qtyordered, itemid ,itemprice, purchasedate, customerid, returnsYN FROM billofsale WHERE customerid = ?;";

		preparedStatement = connection.prepareStatement(query);
		preparedStatement.setInt(1,cid);

		rs = preparedStatement.executeQuery();

		printPurchaseHistory(rs);
	}


	/**
	 * Functional Requirement 18: As a customer, I should be able to buy an item.
	 */
	private static void buyItem(Statement stmt) throws SQLException {
        ResultSet rs;
        String query;
        PreparedStatement preparedStatement;
        Scanner in = new Scanner(System.in);
        System.out.println("What is your customer ID?");
        int customerId = in.nextInt();
        System.out.println("Here are all the available items.");
        System.out.println("---------------------------------");

        // print all available items
        showAllAvailableItems(stmt);

        System.out.println();
        System.out.println();
        System.out.println("Which item would you like to buy? Please provide the itemId.");
        int itemId = in.nextInt();
        System.out.println("How many items would you like to buy?");
        int qty = in.nextInt();

        // Get the item price from the given itemid
        query = "SELECT itemprice FROM items WHERE itemid = ?;";
        preparedStatement = connection.prepareStatement(query);
        preparedStatement.setInt(1,itemId);
        rs = preparedStatement.executeQuery();
        float itemPrice = 0;
        if (rs.next()) {
            itemPrice = rs.getFloat("itemprice");
        }

        // insert a new row in billofsale
        query =  "INSERT INTO billofsale "
                + "(itemid, qtyordered, itemprice, purchasedate, customerid) VALUES"
                + "(?, ?, ?, ?, ?)";
        preparedStatement= connection.prepareStatement(query);
        preparedStatement.setInt(1,itemId);
        preparedStatement.setInt(2, qty);
        preparedStatement.setFloat(3,itemPrice);
        preparedStatement.setDate(4, new Date(System.currentTimeMillis()));
        preparedStatement.setInt(5, customerId);
        preparedStatement.executeUpdate();

        System.out.println();
        System.out.println("Thank you for your purchase");
        System.out.println();
    }

	/**
	 * Creates a stored procedure
	 * @throws SQLException
	 */
	private static void createProcedures(Statement stmt) throws SQLException
	{
		String queryDrop = "DROP PROCEDURE IF EXISTS archiveCustomers;";
		stmt.execute(queryDrop);

		String createInParameterProcedure =
				"CREATE PROCEDURE archiveCustomers (IN cutoffdate DATE)" +
						"BEGIN" +
						"  INSERT INTO archivedCustomers " +
						"  (SELECT * " +
						"   FROM   customers " +
						"   WHERE  updatedAt <= cutoffdate);" +
						"  DELETE FROM customers " +
						"  WHERE  customers.customerid IN (SELECT archivedCustomers.customerid FROM archivedCustomers); " +
						"END";
		stmt.executeUpdate(createInParameterProcedure);
	}


    /**
	 * Calls the archiveCustomers function for customers and get the result
     * @throws SQLException
     */
	private static void archive() throws SQLException {
		Scanner in = new Scanner(System.in);
		System.out.println("Specify the cutoff date that you want to archive from in 'yyyy-mm-dd' format");
		String cutoffDate = in.next();

		CallableStatement cstmt = null;
		String sql = "{call archiveCustomers(?)}";
		cstmt = connection.prepareCall(sql);
		cstmt.setDate(1, Date.valueOf(cutoffDate));
		cstmt.executeQuery();
		System.out.println("Customers who have not updated after " + cutoffDate + " have been moved to archive.");
	}



    /**
     * Print out all the items in items table
     * @param stmt
     * @throws SQLException
     */
    private static void showAllAvailableItems(Statement stmt) throws SQLException {
        ResultSet rs = stmt.executeQuery("SELECT itemid,itemname,itemprice,qtyinstock FROM items;");
        System.out.format("%-15s%-40s%-30s%-30s\n", "Item ID", "Item Name", "Item Price", "Quantity in Stock");
        while (rs.next()) {
            System.out.format("%-15s%-40s%-30s%-30s\n",
                    rs.getString("itemid"),
                    rs.getString("itemname"),
                    rs.getString("itemprice"),
                    rs.getString("qtyinstock"));
        }
    }

    /**
     * Print out all the transactions in billofsale table
     * @param stmt
     * @throws SQLException
     */
    private static void showAllBillOfSale(Statement stmt) throws SQLException {
        ResultSet rs = stmt.executeQuery("SELECT * FROM billofsale;");
        System.out.format("%-20s%-20s%-20s%-20s%-20s%-20s%-20s\n",
                "Transaction Id", "Item ID", "Qty ordered", "Item price",
                "Purchase date", "Customer id" , "return?");
        System.out.println("--------------------------------------------------------" +
                "-----------------------------------------------------------------------");
        while (rs.next()) {
            System.out.format("%-20s%-20s%-20s%-20s%-20s%-20s%-20s\n",
                    rs.getString("transactionid"),
                    rs.getString("itemid"),
                    rs.getString("qtyordered"),
                    rs.getString("itemprice"),
                    rs.getString("purchasedate"),
                    rs.getString("customerid"),
                    rs.getString("returnsYN"));
        }

        System.out.println("--------------------------------------------------------" +
                "-----------------------------------------------------------------------");
        System.out.println();
    }

	private static void showAllCustomers(Statement stmt) throws SQLException {
		System.out.println("Customer data");
		System.out.println("-------------------------------------");
		ResultSet rs = stmt.executeQuery("SELECT customername,customerid,totalNumOfPurchases,updatedAt FROM customers;");
		System.out.format("%-40s%-30s%-30s%-30s\n", "Customer name", "Customer id", "Total Number of Purchases",
				"UpdatedAt");
		while (rs.next()) {
			System.out.format("%-40s%-30s%-30s%-30s\n",
					rs.getString("customername"),
					rs.getString("customerid"),
					rs.getString("totalNumOfPurchases"),
					rs.getString("updatedAt"));
		}
	}

	private static void showCustomerArchive(Statement stmt) throws SQLException {
		System.out.println("Archived customer data");
		System.out.println("-----------------------------------");
		ResultSet rs = stmt.executeQuery("SELECT customername,customerid,totalNumOfPurchases,updatedAt FROM " +
				"archivedCustomers;");
		System.out.format("%-40s%-30s%-30s%-30s\n", "Customer name", "Customer id", "Total Number of Purchases",
				"UpdatedAt");
		while (rs.next()) {
			System.out.format("%-40s%-30s%-30s%-30s\n",
					rs.getString("customername"),
					rs.getString("customerid"),
					rs.getString("totalNumOfPurchases"),
					rs.getString("updatedAt"));
		}
	}
}