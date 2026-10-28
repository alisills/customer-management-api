// Converts a row from the customers table into the API's customer object

fun toCustomer(row) = {
	id: row.id,
	firstName: row.first_name,
	lastName: row.last_name,
	email: row.email,
	phone: row.phone default "",
	city: row.city default "",
	sfAccountId: row.sf_account_id
}