#input String fileName
#output String[] statements
import java.util.regex.Pattern
import org.apache.commons.lang.StringEscapeUtils
import org.hibernate.Session
import org.apache.commons.lang.StringUtils

import org.apache.commons.io.IOUtils

def sqlContent = IOUtils.toString(rtx.getResourceStream("WEB-INF/descr/sql/" + fileName))

def statements = sqlContent.split("(?m);\\s*\$")

Session session = getDBSession(rtx.getModelService().getDatabaseId("User"))
for (statement in statements) {
	
	if (StringUtils.isNotEmpty(statement.replace("\n", "").replace("\r", ""))) {
		session.createSQLQuery(statement).executeUpdate()
	}
	session.flush()
}