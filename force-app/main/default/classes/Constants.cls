public with sharing class Constants {
	public static final String BILLING_RULE_ON = 'on';
	public static final String BILLING_RULE_BEFORE = 'before';
	public static final String BILLING_RULE_AFTER = 'after';

	public static final String AMOUNT_RULE_MAX = 'max';
	public static final String AMOUNT_RULE_EXACT = 'exact';

	public static final String FREQUENCY_DAILY = 'daily';
	public static final String FREQUENCY_WEEKLY = 'weekly';
	public static final String FREQUENCY_BIWEEKLY = 'biWeekly';
	public static final String FREQUENCY_MONTHLY = 'monthly';
	public static final String FREQUENCY_QUARTERLY = 'quarterly';
	public static final String FREQUENCY_HALF_YEARLY = 'halfYearly';
	public static final String FREQUENCY_YEARLY = 'yearly';

	public static final String NOT_APPLICABLE = 'notApplicable';
	public static final String THIS_TRANSACTION = 'thisTransaction';
	public static final String LESS_THAN_30_DAYS = 'lessThan30Days';
	public static final String FROM_30_TO_60_DAYS = 'from30To60Days';
	public static final String MORE_THAN_60_DAYS = 'moreThan60Days';

	public static final String ACCOUNT_TYPE_DEBIT = 'debit';
	public static final String ACCOUNT_TYPE_CREDIT = 'credit';

	public static final String CHANNEL_IOS = 'iOS';
	public static final String CHANNEL_ANDROID = 'Android';
	public static final String CHANNEL_WEB = 'Web';

	public static final String RECURRING_PROCESS_MODEL_SUBSCRIPTION = 'Subscription';
	public static final String RECURRING_PROCESS_MODEL_CARD_ON_FILE = 'CardOnFile';
	public static final String RECURRING_PROCESS_MODEL_UNSCHEDULED_CARD_ON_FILE = 'UnscheduledCardOnFile';

	public static final String SHOPPER_INTERACTION_ECOMMERCE = 'Ecommerce';
	public static final String SHOPPER_INTERACTION_CONT_AUTH = 'ContAuth';
	public static final String SHOPPER_INTERACTION_MOTO = 'Moto';
	public static final String SHOPPER_INTERACTION_POS = 'POS';

	public enum BillingAttemptsRuleEnum {
		BILLING_RULE_ON,
		BILLING_RULE_BEFORE,
		BILLING_RULE_AFTER
	}

	public enum AmountRuleEnum {
		 AMOUNT_RULE_MAX,
		 AMOUNT_RULE_EXACT
	}

	public enum FrequencyEnum {
		FREQUENCY_DAILY,
		FREQUENCY_WEEKLY,
		FREQUENCY_BIWEEKLY,
		FREQUENCY_MONTHLY,
		FREQUENCY_QUARTERLY,
		FREQUENCY_HALF_YEARLY,
		FREQUENCY_YEARLY
	}

	public enum AccountAgeEnum {
		NOT_APPLICABLE,
		THIS_TRANSACTION,
		LESS_THAN_30_DAYS,
		FROM_30_TO_60_DAYS,
		MORE_THAN_60_DAYS
	}

	public enum AccountChangeEnum {
		THIS_TRANSACTION,
		LESS_THAN_30_DAYS,
		FROM_30_TO_60_DAYS,
		MORE_THAN_60_DAYS
	}

	public enum AccountTypeEnum {
		NOT_APPLICABLE,
		ACCOUNT_TYPE_DEBIT,
		ACCOUNT_TYPE_CREDIT
	}

	public enum DeliveryAddressUsageIndicatorEnum {
		THIS_TRANSACTION,
		LESS_THAN_30_DAYS,
		FROM_30_TO_60_DAYS,
		MORE_THAN_60_DAYS
	}

	public enum PasswordChangeIndicatorEnum {
		NOT_APPLICABLE,
		THIS_TRANSACTION,
		LESS_THAN_30_DAYS,
		FROM_30_TO_60_DAYS,
		MORE_THAN_60_DAYS
	}

	public enum PaymentAccountIndicatorEnum {
		NOT_APPLICABLE,
		THIS_TRANSACTION,
		LESS_THAN_30_DAYS,
		FROM_30_TO_60_DAYS,
		MORE_THAN_60_DAYS
	}

	public enum ChannelEnum {
		CHANNEL_IOS,
		CHANNEL_ANDROID,
		CHANNEL_WEB
	}

	public enum RecurringProcessingModelEnum {
		RECURRING_PROCESS_MODEL_SUBSCRIPTION,
		RECURRING_PROCESS_MODEL_CARD_ON_FILE,
		RECURRING_PROCESS_MODEL_UNSCHEDULED_CARD_ON_FILE
	}

	public enum ShopperInteractionEnum {
		SHOPPER_INTERACTION_ECOMMERCE,
		SHOPPER_INTERACTION_CONT_AUTH,
		SHOPPER_INTERACTION_MOTO,
		SHOPPER_INTERACTION_POS
	}
}