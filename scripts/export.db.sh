echo "Exporting users from MongoDB"
mongoexport \
  -h $MONGO_SERVER \
  -d easyac \
  -c users \
  -u $MONGO_USER \
  -p $MONGO_PASS \
  -o ./data/users.json

echo "Exporting classes from MongoDB"
mongoexport \
  -h $MONGO_SERVER \
  -d easyac \
  -c classes \
  -u $MONGO_USER \
  -p $MONGO_PASS \
  -o ./data/classes.json
