  CREATE TABLE "PO_DTL" 
   (	"ID" NUMBER, 
	"PO_NO" NUMBER, 
	"ITEM_NAME" NUMBER, 
	"UOM" NUMBER, 
	"RATE" NUMBER, 
	"QTY" NUMBER, 
	 CONSTRAINT "PO_DTL_CON" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   ) ;

  ALTER TABLE "PO_DTL" ADD CONSTRAINT "PO_DTL_CON_FOR" FOREIGN KEY ("PO_NO")
	  REFERENCES "PO_ORDER" ("PO_NO") ENABLE;
  ALTER TABLE "PO_DTL" ADD CONSTRAINT "PO_DTL_CON_ITEM" FOREIGN KEY ("ITEM_NAME")
	  REFERENCES "ITEM_MST" ("ID") ENABLE;
