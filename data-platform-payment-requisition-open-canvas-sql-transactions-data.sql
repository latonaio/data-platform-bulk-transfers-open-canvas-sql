CREATE TABLE `data_platform_payment_requsition_open_canvas_transactions_data`
(
  `Payer`                                int(12) NOT NULL,
  `PayerPaymentDate`                     date NOT NULL,
  `PayerPaymentRequisitionID`            int(6) NOT NULL,
  `PayerPaymentRequisitionItem`          int(6) NOT NULL,
  `Payee`                                int(12) NOT NULL,
  `item_id`                              varchar(5) NOT NULL,
  `beneficiary_bank_code`                varchar(4) NOT NULL,
  `beneficiary_bank_name`                varchar(15) DEFAULT NULL,
  `beneficiary_branch_code`              varchar(3) NOT NULL,
  `beneficiary_branch_name`              varchar(15) DEFAULT NULL,
  `clearing_house_number`                varchar(4) DEFAULT NULL,
  `account_type_code`                    varchar(2) NOT NULL,
  `account_number`                       varchar(7) NOT NULL,
  `beneficiary_name`                     varchar(30) NOT NULL,
  `transfer_amount`                      varchar(10) NOT NULL,
  `new_code`                             varchar(1) NOT NULL,
  `customer_code1`                       varchar(10) DEFAULT NULL,
  `customer_code2`                       varchar(10) DEFAULT NULL,
  `edi_info`                             varchar(20) DEFAULT NULL,
  `edi_xml`                              varchar(140) DEFAULT NULL,
  `transfer_designated_type`             varchar(1) DEFAULT NULL,
  `identification`                       varchar(1) DEFAULT NULL,
  `dummy`                                varchar(7) DEFAULT NULL,
  
    PRIMARY KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`, `PayerPaymentRequisitionItem`),

    CONSTRAINT `DataPlatformBulkPaymentRequisitionOpenCanvasTransactionsData_fk` FOREIGN KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_open_canvas_fixed_request_data` (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`),
    CONSTRAINT `DataPlatformBulkPaymentRequisitionOpenCanvasTransactionsDataPayee_fk` FOREIGN KEY (`Payee`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
