.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
.field private static final CCC_LENGTH:I

.field private static final CID:Ljava/lang/String;

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field public static final HTC_MIN_MATCH:I

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field private static final MATCH:I

.field static final MIN_MATCH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field private static final PARTNER_CDMA_InternationalAccessCode_PATH:Ljava/lang/String; = "etc/cdma_international_access_code-table.xml"

.field public static final PAUSE:C = ','

.field public static final PAUSE_1:C = 'p'

.field public static final PAUSE_SOFT_T_HARD_P:Z = false

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field private static final PROP_KEY_MIN_MATCH:Ljava/lang/String; = "ro.phone.min_match"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field private static final USE_8_FOR_CHINA_PREFIX:Z

.field public static final WAIT:C = ';'

.field public static final WAIT_1:C = 'w'

.field public static final WILD:C = 'N'

.field public static final WILD_1:C = '?'

.field private static m_CDMA_InternationalAccessCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    .line 112
    const-string v0, "00"

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->m_CDMA_InternationalAccessCode:Ljava/lang/String;

    .line 119
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 141
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->support11DigitsNumMatch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    :goto_0
    sput v0, Landroid/telephony/PhoneNumberUtils;->MATCH:I

    .line 150
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getCID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->CID:Ljava/lang/String;

    .line 152
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->computeHtcMinMatch()I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->HTC_MIN_MATCH:I

    .line 1290
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 2338
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2340
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2341
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2343
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2344
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2346
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2347
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2349
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2350
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2352
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2353
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2355
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2356
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2358
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2359
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2361
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2362
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3040
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 3052
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    .line 3308
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string/jumbo v1, "region"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->USE_8_FOR_CHINA_PREFIX:Z

    return-void

    .line 141
    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 3308
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3040
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3075
    return-void
.end method

.method public static addTtsSpan(Landroid/text/Spannable;II)V
    .locals 2
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "endExclusive"    # I

    .prologue
    .line 2561
    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2565
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2900
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 2901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2902
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2903
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2910
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "retStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2907
    .end local v2    # "retStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2908
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "retStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 1102
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1103
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1110
    :goto_0
    return v0

    .line 1104
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1110
    const/4 v0, 0x0

    goto :goto_0

    .line 1105
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 1106
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 1107
    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    .line 1108
    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    .line 1104
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1094
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1096
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 12
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 949
    const/4 v2, 0x0

    .line 950
    .local v2, "prependPlus":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 952
    .local v3, "ret":Ljava/lang/StringBuilder;
    if-ge p2, v7, :cond_0

    .line 953
    const-string v5, ""

    .line 1044
    :goto_0
    return-object v5

    .line 957
    :cond_0
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1

    .line 958
    const/4 v2, 0x1

    .line 961
    :cond_1
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 964
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 966
    const-string v5, ""

    goto :goto_0

    .line 969
    :cond_2
    if-eqz v2, :cond_3

    .line 995
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 996
    .local v4, "retString":Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 997
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 998
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 999
    const-string v5, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1003
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "retString":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1013
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "retString":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1014
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1022
    :cond_5
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1023
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1024
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1029
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1037
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1038
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2400
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2401
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2403
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2404
    .local v0, "currIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2405
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2406
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2412
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 9
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .prologue
    const/4 v6, 0x1

    .line 2465
    move-object v3, p0

    .line 2467
    .local v3, "retStr":Ljava/lang/String;
    if-ne p1, p2, :cond_3

    if-ne p1, v6, :cond_3

    move v5, v6

    .line 2470
    .local v5, "useNanp":Z
    :goto_0
    if-eqz p0, :cond_2

    const-string v7, "+"

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 2474
    const/4 v2, 0x0

    .line 2475
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 2478
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2487
    :cond_0
    if-eqz v5, :cond_4

    .line 2488
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2494
    .local v1, "networkDialStr":Ljava/lang/String;
    :goto_1
    invoke-static {v1, v5}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2497
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2498
    if-nez v3, :cond_5

    .line 2499
    move-object v3, v1

    .line 2510
    :goto_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2511
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2512
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 2515
    .local v0, "dialableIndex":I
    if-lt v0, v6, :cond_7

    .line 2516
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2519
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2531
    .end local v0    # "dialableIndex":I
    :cond_1
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    :cond_2
    move-object p0, v3

    .line 2533
    .end local p0    # "dialStr":Ljava/lang/String;
    :goto_4
    return-object p0

    .line 2467
    .end local v5    # "useNanp":Z
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 2490
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v4    # "tempDialStr":Ljava/lang/String;
    .restart local v5    # "useNanp":Z
    :cond_4
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "networkDialStr":Ljava/lang/String;
    goto :goto_1

    .line 2501
    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2507
    :cond_6
    const-string v6, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2524
    .restart local v0    # "dialableIndex":I
    :cond_7
    if-gez v0, :cond_8

    .line 2525
    const-string v2, ""

    .line 2527
    :cond_8
    const-string/jumbo v7, "wrong postDialStr="

    invoke-static {v7, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2424
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2425
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2426
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2427
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2428
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 2429
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2433
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static charToBCD(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/16 v1, 0xd

    const/16 v0, 0xc

    .line 1116
    const/16 v2, 0x30

    if-lt p0, v2, :cond_1

    const/16 v2, 0x39

    if-gt p0, v2, :cond_1

    .line 1117
    add-int/lit8 v0, p0, -0x30

    .line 1136
    :cond_0
    :goto_0
    return v0

    .line 1118
    :cond_1
    const/16 v2, 0x2a

    if-ne p0, v2, :cond_2

    .line 1119
    const/16 v0, 0xa

    goto :goto_0

    .line 1120
    :cond_2
    const/16 v2, 0x23

    if-ne p0, v2, :cond_3

    .line 1121
    const/16 v0, 0xb

    goto :goto_0

    .line 1122
    :cond_3
    const/16 v2, 0x2c

    if-eq p0, v2, :cond_0

    .line 1124
    const/16 v2, 0x4e

    if-ne p0, v2, :cond_4

    move v0, v1

    .line 1125
    goto :goto_0

    .line 1126
    :cond_4
    const/16 v2, 0x3b

    if-ne p0, v2, :cond_5

    .line 1127
    const/16 v0, 0xe

    goto :goto_0

    .line 1129
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-eqz v2, :cond_6

    const/16 v2, 0x70

    if-eq p0, v2, :cond_0

    .line 1134
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v0, 0x3f

    if-ne p0, v0, :cond_7

    move v0, v1

    .line 1136
    goto :goto_0

    .line 1139
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 3203
    const/4 v0, 0x0

    .line 3204
    .local v0, "trunk_prefix_was_read":Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 3205
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_2

    .line 3206
    if-eqz v0, :cond_0

    .line 3221
    :goto_1
    return v1

    .line 3212
    :cond_0
    const/4 v0, 0x1

    .line 3218
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 3214
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3221
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 568
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 557
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .prologue
    .line 575
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 596
    const/4 v7, 0x0

    .line 597
    .local v7, "numNonDialableCharsInA":I
    const/4 v8, 0x0

    .line 599
    .local v8, "numNonDialableCharsInB":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v10, 0x1

    .line 689
    :goto_0
    return v10

    .line 599
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 601
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 602
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 605
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 606
    .local v4, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 607
    .local v5, "ib":I
    const/4 v6, 0x0

    .line 609
    .local v6, "matched":I
    :cond_5
    :goto_1
    if-ltz v4, :cond_8

    if-ltz v5, :cond_8

    .line 611
    const/4 v9, 0x0

    .line 613
    .local v9, "skipCmp":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 615
    .local v0, "ca":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_6

    .line 616
    add-int/lit8 v4, v4, -0x1

    .line 617
    const/4 v9, 0x1

    .line 618
    add-int/lit8 v7, v7, 0x1

    .line 621
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 623
    .local v1, "cb":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_7

    .line 624
    add-int/lit8 v5, v5, -0x1

    .line 625
    const/4 v9, 0x1

    .line 626
    add-int/lit8 v8, v8, 0x1

    .line 629
    :cond_7
    if-nez v9, :cond_5

    .line 630
    if-eq v1, v0, :cond_9

    const/16 v10, 0x4e

    if-eq v0, v10, :cond_9

    const/16 v10, 0x4e

    if-eq v1, v10, :cond_9

    .line 643
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v9    # "skipCmp":Z
    :cond_8
    const/4 v10, 0x7

    if-ge v6, v10, :cond_c

    .line 644
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v2, v10, v7

    .line 645
    .local v2, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v3, v10, v8

    .line 650
    .local v3, "effectiveBLen":I
    if-ne v2, v3, :cond_b

    if-ne v2, v6, :cond_b

    .line 651
    const/4 v10, 0x1

    goto :goto_0

    .line 632
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    .restart local v0    # "ca":C
    .restart local v1    # "cb":C
    .restart local v9    # "skipCmp":Z
    :cond_9
    sget-object v10, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-eqz v10, :cond_a

    if-eq v1, v0, :cond_a

    const/16 v10, 0x3f

    if-eq v0, v10, :cond_a

    const/16 v10, 0x3f

    if-ne v1, v10, :cond_8

    .line 639
    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 654
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v9    # "skipCmp":Z
    .restart local v2    # "effectiveALen":I
    .restart local v3    # "effectiveBLen":I
    :cond_b
    const/4 v10, 0x0

    goto :goto_0

    .line 658
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_c
    const/4 v10, 0x7

    if-lt v6, v10, :cond_e

    if-ltz v4, :cond_d

    if-gez v5, :cond_e

    .line 659
    :cond_d
    const/4 v10, 0x1

    goto :goto_0

    .line 671
    :cond_e
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 674
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 677
    :cond_f
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 680
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 683
    :cond_10
    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_11

    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 686
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 689
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 697
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .prologue
    .line 705
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 706
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    .line 843
    :goto_0
    return v18

    .line 706
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 707
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    .line 708
    const/16 v18, 0x0

    goto :goto_0

    .line 711
    :cond_3
    const/4 v10, 0x0

    .line 712
    .local v10, "forwardIndexA":I
    const/4 v11, 0x0

    .line 714
    .local v11, "forwardIndexB":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 716
    .local v6, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 718
    .local v7, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 719
    .local v5, "bothHasCountryCallingCode":Z
    const/4 v13, 0x1

    .line 720
    .local v13, "okToIgnorePrefix":Z
    const/16 v16, 0x0

    .line 721
    .local v16, "trunkPrefixIsOmittedA":Z
    const/16 v17, 0x0

    .line 722
    .local v17, "trunkPrefixIsOmittedB":Z
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 723
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 725
    const/16 v18, 0x0

    goto :goto_0

    .line 729
    :cond_4
    const/4 v13, 0x0

    .line 730
    const/4 v5, 0x1

    .line 731
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 732
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 758
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 759
    .local v3, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 760
    .local v4, "backwardIndexB":I
    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    if-lt v4, v11, :cond_f

    .line 761
    const/4 v14, 0x0

    .line 762
    .local v14, "skip_compare":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 763
    .local v8, "chA":C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 764
    .local v9, "chB":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 765
    add-int/lit8 v3, v3, -0x1

    .line 766
    const/4 v14, 0x1

    .line 768
    :cond_7
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 769
    add-int/lit8 v4, v4, -0x1

    .line 770
    const/4 v14, 0x1

    .line 773
    :cond_8
    if-nez v14, :cond_6

    .line 774
    if-eq v8, v9, :cond_e

    .line 775
    const/16 v18, 0x0

    goto :goto_0

    .line 733
    .end local v3    # "backwardIndexA":I
    .end local v4    # "backwardIndexB":I
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    .line 736
    const/4 v13, 0x0

    goto :goto_1

    .line 738
    :cond_a
    if-eqz v6, :cond_c

    .line 739
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 747
    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    .line 748
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 741
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 742
    .local v15, "tmp":I
    if-ltz v15, :cond_b

    .line 743
    move v10, v15

    .line 744
    const/16 v16, 0x1

    goto :goto_3

    .line 750
    .end local v15    # "tmp":I
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 751
    .restart local v15    # "tmp":I
    if-ltz v15, :cond_5

    .line 752
    move v11, v15

    .line 753
    const/16 v17, 0x1

    goto :goto_1

    .line 777
    .end local v15    # "tmp":I
    .restart local v3    # "backwardIndexA":I
    .restart local v4    # "backwardIndexB":I
    .restart local v8    # "chA":C
    .restart local v9    # "chB":C
    .restart local v14    # "skip_compare":Z
    :cond_e
    add-int/lit8 v3, v3, -0x1

    .line 778
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 782
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_f
    if-eqz v13, :cond_17

    .line 783
    if-eqz v16, :cond_10

    if-le v10, v3, :cond_11

    :cond_10
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_13

    .line 785
    :cond_11
    if-eqz p2, :cond_12

    .line 795
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 797
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 800
    :cond_13
    if-eqz v17, :cond_14

    if-le v11, v4, :cond_15

    :cond_14
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 802
    :cond_15
    if-eqz p2, :cond_16

    .line 803
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 805
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 818
    :cond_17
    if-nez v5, :cond_19

    const/4 v12, 0x1

    .line 819
    .local v12, "maybeNamp":Z
    :goto_4
    if-lt v3, v10, :cond_1b

    .line 820
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 821
    .restart local v8    # "chA":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 822
    if-eqz v12, :cond_1a

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 823
    const/4 v12, 0x0

    .line 828
    :cond_18
    add-int/lit8 v3, v3, -0x1

    .line 829
    goto :goto_4

    .line 818
    .end local v8    # "chA":C
    .end local v12    # "maybeNamp":Z
    :cond_19
    const/4 v12, 0x0

    goto :goto_4

    .line 825
    .restart local v8    # "chA":C
    .restart local v12    # "maybeNamp":Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 830
    .end local v8    # "chA":C
    :cond_1b
    :goto_5
    if-lt v4, v11, :cond_1e

    .line 831
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 832
    .restart local v9    # "chB":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 833
    if-eqz v12, :cond_1d

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 834
    const/4 v12, 0x0

    .line 839
    :cond_1c
    add-int/lit8 v4, v4, -0x1

    .line 840
    goto :goto_5

    .line 836
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 843
    .end local v9    # "chB":C
    .end local v12    # "maybeNamp":Z
    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method private static computeHtcMinMatch()I
    .locals 2

    .prologue
    .line 3601
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->support11DigitsNumMatch()Z

    move-result v0

    .line 3603
    .local v0, "isDopod":Z
    const/16 v1, 0x8

    .line 3605
    .local v1, "minMatch":I
    if-eqz v0, :cond_1

    .line 3606
    const/16 v1, 0xb

    .line 3617
    :cond_0
    :goto_0
    return v1

    .line 3608
    :cond_1
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatchByCID()I

    move-result v1

    .line 3609
    if-nez v1, :cond_2

    .line 3610
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatchByProp()I

    move-result v1

    .line 3613
    :cond_2
    if-gtz v1, :cond_0

    .line 3614
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 2315
    if-nez p0, :cond_1

    .line 2331
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2318
    .restart local p0    # "input":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2319
    .local v2, "len":I
    if-eqz v2, :cond_0

    .line 2323
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2325
    .local v3, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2326
    aget-char v0, v3, v1

    .line 2328
    .local v0, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 2325
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2331
    .end local v0    # "c":C
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0    # "input":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 448
    if-nez p0, :cond_0

    .line 449
    const/4 v4, 0x0

    .line 464
    :goto_0
    return-object v4

    .line 451
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 452
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 454
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 455
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 457
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 458
    const/16 v0, 0x2c

    .line 462
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 460
    const/16 v0, 0x3b

    goto :goto_2

    .line 464
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;
    .locals 6
    .param p0, "phoneNumberString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2606
    if-nez p0, :cond_0

    .line 2633
    :goto_0
    return-object v3

    .line 2611
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 2612
    .local v2, "phoneNumberUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 2617
    .local v1, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2622
    :goto_1
    new-instance v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    invoke-direct {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    .line 2623
    .local v0, "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    if-nez v1, :cond_1

    .line 2626
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 2633
    :goto_2
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v3

    goto :goto_0

    .line 2628
    :cond_1
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2629
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setCountryCode(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 2631
    :cond_2
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    goto :goto_2

    .line 2618
    .end local v0    # "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 2544
    if-nez p0, :cond_0

    .line 2545
    const/4 v0, 0x0

    .line 2549
    :goto_0
    return-object v0

    .line 2547
    :cond_0
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 2548
    .local v0, "spannable":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 336
    if-nez p0, :cond_0

    .line 337
    const/4 v6, 0x0

    .line 362
    :goto_0
    return-object v6

    .line 340
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 341
    .local v3, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 343
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 344
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 346
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 347
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 348
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 349
    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    .line 351
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 353
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 355
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 356
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 357
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 362
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 375
    if-nez p0, :cond_0

    .line 376
    const/4 v5, 0x0

    .line 398
    :goto_0
    return-object v5

    .line 379
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 380
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 383
    .local v1, "haveSeenPlus":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 384
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 385
    .local v0, "c":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 386
    if-eqz v1, :cond_2

    .line 383
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 389
    :cond_2
    const/4 v1, 0x1

    .line 391
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 392
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 393
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 398
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractNetworkPortionExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 3541
    if-nez p0, :cond_0

    .line 3542
    const/4 v4, 0x0

    .line 3559
    :goto_0
    return-object v4

    .line 3545
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3546
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3549
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 3550
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3551
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3553
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3549
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3554
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3559
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 532
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 548
    :goto_0
    return-object v5

    .line 535
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 539
    .local v4, "trimIndex":I
    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 540
    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 542
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 543
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 544
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 548
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .param p0, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 2884
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2885
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2886
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2890
    .end local v0    # "c":C
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 2884
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2890
    .end local v0    # "c":C
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1546
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1547
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 15
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 1430
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1431
    .local v4, "length":I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    const/4 v11, 0x5

    if-le v4, v11, :cond_0

    .line 1439
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1442
    .local v9, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1443
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1448
    new-array v1, v13, [I

    .line 1449
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1451
    .local v5, "numDashes":I
    const/4 v10, 0x1

    .line 1452
    .local v10, "state":I
    const/4 v7, 0x0

    .line 1453
    .local v7, "numDigits":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 1454
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1455
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 1499
    :cond_2
    :pswitch_0
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1457
    :pswitch_1
    if-eqz v7, :cond_3

    if-ne v10, v14, :cond_4

    .line 1458
    :cond_3
    const/4 v10, 0x3

    move v5, v6

    .line 1453
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_1

    .line 1471
    :cond_4
    :pswitch_2
    if-ne v10, v14, :cond_5

    .line 1473
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1475
    :cond_5
    if-ne v10, v13, :cond_6

    .line 1477
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    .line 1482
    :goto_3
    const/4 v10, 0x1

    .line 1483
    add-int/lit8 v7, v7, 0x1

    .line 1484
    goto :goto_2

    .line 1478
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_6
    const/4 v11, 0x4

    if-eq v10, v11, :cond_b

    if-eq v7, v13, :cond_7

    const/4 v11, 0x6

    if-ne v7, v11, :cond_b

    .line 1480
    :cond_7
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    goto :goto_3

    .line 1487
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_3
    const/4 v10, 0x4

    move v5, v6

    .line 1488
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    .line 1491
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_4
    if-nez v2, :cond_2

    .line 1493
    const/4 v10, 0x2

    move v5, v6

    .line 1494
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    .line 1504
    .end local v0    # "c":C
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_8
    const/4 v11, 0x7

    if-ne v7, v11, :cond_a

    .line 1506
    add-int/lit8 v5, v6, -0x1

    .line 1510
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_9

    .line 1511
    aget v8, v1, v2

    .line 1512
    .local v8, "pos":I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1510
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1516
    .end local v8    # "pos":I
    :cond_9
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1517
    .local v3, "len":I
    :goto_6
    if-lez v3, :cond_0

    .line 1518
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 1519
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1520
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v3    # "len":I
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_a
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_4

    .end local v5    # "numDashes":I
    .restart local v0    # "c":C
    .restart local v6    # "numDashes":I
    :cond_b
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_3

    .line 1455
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1329
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1330
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1331
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1348
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1349
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1350
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1629
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, p0

    .line 1640
    :goto_0
    return-object v1

    .line 1633
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1634
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1636
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1637
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1638
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1663
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1664
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1665
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1687
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 1664
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1669
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 1671
    .local v5, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_2

    .line 1676
    :try_start_0
    const-string v6, "ZZ"

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1677
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1678
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gtz v6, :cond_2

    .line 1681
    move-object p2, v3

    .line 1686
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1687
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_3

    .end local v4    # "result":Ljava/lang/String;
    :goto_3
    move-object p0, v4

    goto :goto_1

    .restart local v4    # "result":Ljava/lang/String;
    :cond_3
    move-object v4, p0

    goto :goto_3

    .line 1683
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1381
    move v0, p1

    .line 1383
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1384
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1385
    const/4 v0, 0x1

    .line 1394
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1405
    :goto_1
    return-void

    .line 1386
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1388
    const/4 v0, 0x2

    goto :goto_0

    .line 1390
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1396
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1399
    :pswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1402
    :pswitch_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1

    .line 1394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 3
    .param p0, "rawPhoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "formatIdentifier"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1603
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 1605
    .local v1, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1606
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1607
    invoke-virtual {v1, v0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1611
    .end local v0    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    return-object v2

    .line 1609
    :catch_0
    move-exception v2

    .line 1611
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1573
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatNumberToRFC3966(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1584
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getCID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3590
    const-string/jumbo v0, "ro.cid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->safeGetProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCdmaInternationalAccessCode()Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 2803
    const-string v9, "gsm.operator.numeric"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2807
    .local v6, "strOperatorNumeric":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2808
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "etc/cdma_international_access_code-table.xml"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2809
    .local v0, "confFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 2811
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2812
    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v3, "confreader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 2813
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2814
    const-string/jumbo v9, "iaccodes"

    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2815
    if-eqz v1, :cond_5

    .line 2818
    :cond_0
    :try_start_2
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2819
    const-string/jumbo v9, "iaccode"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    if-nez v9, :cond_3

    .line 2851
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_1
    :goto_0
    move-object v2, v3

    .line 2853
    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :cond_2
    :goto_1
    return v8

    .line 2823
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :cond_3
    const/4 v9, 0x0

    :try_start_4
    const-string/jumbo v10, "mcc"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2826
    .local v5, "mcc":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2827
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2829
    .local v7, "strOperatormcc":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2830
    const/4 v9, 0x0

    const-string v10, "cdma_iac"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Landroid/telephony/PhoneNumberUtils;->m_CDMA_InternationalAccessCode:Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2832
    const/4 v8, 0x1

    .line 2851
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    :cond_4
    :goto_2
    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_1

    .line 2838
    .end local v2    # "confreader":Ljava/io/FileReader;
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v7    # "strOperatormcc":Ljava/lang/String;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 2839
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v9, "PhoneNumberUtils"

    const-string v10, "Got execption while getting perferred time zone."

    invoke-static {v9, v10, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2851
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_1

    .line 2840
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_1
    move-exception v4

    .line 2841
    .local v4, "e":Ljava/io/IOException;
    :try_start_8
    const-string v9, "PhoneNumberUtils"

    const-string v10, "Got execption while getting perferred time zone."

    invoke-static {v9, v10, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 2845
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    move-object v2, v3

    .line 2851
    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :goto_4
    if-eqz v2, :cond_2

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_1

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_4
    move-exception v9

    move-object v2, v3

    .line 2852
    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_1

    .line 2848
    :catch_5
    move-exception v4

    .line 2849
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_a
    const-string v9, "PhoneNumberUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2851
    if-eqz v2, :cond_2

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_1

    :catch_6
    move-exception v9

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v2, :cond_7

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_7
    :goto_7
    throw v8

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_7
    move-exception v9

    goto/16 :goto_0

    .restart local v5    # "mcc":Ljava/lang/String;
    .restart local v7    # "strOperatormcc":Ljava/lang/String;
    :catch_8
    move-exception v9

    goto :goto_2

    .end local v3    # "confreader":Ljava/io/FileReader;
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v7    # "strOperatormcc":Ljava/lang/String;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_9
    move-exception v9

    goto :goto_7

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_6

    .line 2848
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_a
    move-exception v4

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_5

    .line 2845
    :catch_b
    move-exception v9

    goto :goto_4
.end method

.method private static getCurrentIdp(Z)Ljava/lang/String;
    .locals 3
    .param p0, "useNanp"    # Z

    .prologue
    .line 2652
    const/4 v0, 0x0

    .line 2653
    .local v0, "ps":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 2654
    const-string v0, "011"

    .line 2659
    :goto_0
    return-object v0

    .line 2657
    :cond_0
    const-string v1, "gsm.operator.idpstring"

    const-string v2, "+"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDefaultVoiceSubId()I
    .locals 1

    .prologue
    .line 3228
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    return v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1364
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 2672
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 2673
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2674
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2675
    const/4 v2, 0x1

    .line 2681
    :goto_1
    return v2

    .line 2673
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2678
    :cond_1
    const-string/jumbo v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2679
    const/4 v2, 0x2

    goto :goto_1

    .line 2681
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static final getMinMatchByCID()I
    .locals 3

    .prologue
    .line 3621
    const/4 v0, 0x0

    .line 3624
    .local v0, "minMatch":I
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->CID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3625
    const-string v1, "UTSI_040"

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->CID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3626
    const/4 v0, 0x7

    .line 3629
    :cond_0
    return v0
.end method

.method private static final getMinMatchByProp()I
    .locals 8

    .prologue
    .line 3639
    const/4 v1, 0x0

    .line 3640
    .local v1, "minMatch":I
    const/4 v0, 0x0

    .line 3641
    .local v0, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3642
    .local v2, "minString":Ljava/lang/String;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->CID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3643
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ro.phone.min_match"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->CID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3646
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "ro.phone.min_match"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3647
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3648
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->CID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3649
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3655
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3656
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->safeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3659
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3660
    const-string/jumbo v5, "ro.phone.min_match"

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->safeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3664
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3666
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3671
    :cond_2
    :goto_1
    return v1

    .line 3652
    :cond_3
    const-string/jumbo v0, "ro.phone.min_match"

    goto :goto_0

    .line 3667
    :catch_0
    move-exception v3

    .line 3668
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "some problem with min match property value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    const/4 v9, 0x0

    .line 254
    .local v9, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 256
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    .line 260
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 262
    .local v12, "scheme":Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "sip"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 266
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_2
    const-string/jumbo v0, "tel"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 279
    .local v14, "uriString":Ljava/lang/String;
    const/16 v0, 0x3a

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 280
    .local v11, "pos":I
    const/4 v0, -0x1

    if-le v11, v0, :cond_3

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 282
    .end local v11    # "pos":I
    .end local v14    # "uriString":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_5
    if-nez p1, :cond_6

    .line 290
    const/4 v0, 0x0

    goto :goto_0

    .line 293
    :cond_6
    invoke-virtual/range {p0 .. p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 294
    .local v13, "type":Ljava/lang/String;
    const/4 v10, 0x0

    .line 297
    .local v10, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 299
    const-string/jumbo v10, "number"

    .line 304
    :cond_7
    :goto_1
    const/4 v7, 0x0

    .line 306
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 308
    if-eqz v7, :cond_8

    .line 309
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 310
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 316
    :cond_8
    if-eqz v7, :cond_9

    .line 317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_2
    move-object v0, v9

    .line 321
    goto/16 :goto_0

    .line 300
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_a
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 301
    const-string v10, "data1"

    goto :goto_1

    .line 313
    .restart local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 314
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v0, "PhoneNumberUtils"

    const-string v2, "Error getting phone number."

    invoke-static {v0, v2, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    if-eqz v7, :cond_9

    .line 317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 316
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_b

    .line 317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 870
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 874
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2756
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2757
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_0

    .line 2758
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2760
    :cond_0
    if-gez v0, :cond_1

    .line 2761
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2765
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static gotoFirstDialablePos(Ljava/lang/String;I)I
    .locals 2
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "startPos"    # I

    .prologue
    .line 3476
    const/16 v0, -0x64

    .line 3477
    .local v0, "firstPos":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3480
    move v0, p1

    .line 3481
    :goto_0
    if-ltz v0, :cond_0

    .line 3482
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3483
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3490
    :cond_0
    return v0
.end method

.method public static hasAlphabet(Ljava/lang/String;)Z
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 3504
    const/4 v3, 0x0

    .line 3506
    .local v3, "result":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3507
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 3508
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3509
    .local v0, "ch":C
    const/16 v4, 0x61

    if-gt v4, v0, :cond_0

    const/16 v4, 0x7a

    if-le v0, v4, :cond_1

    :cond_0
    const/16 v4, 0x41

    if-gt v4, v0, :cond_3

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_3

    :cond_1
    const/16 v4, 0x70

    if-eq v0, v4, :cond_3

    const/16 v4, 0x50

    if-eq v0, v4, :cond_3

    const/16 v4, 0x77

    if-eq v0, v4, :cond_3

    const/16 v4, 0x57

    if-eq v0, v4, :cond_3

    .line 3512
    const/4 v3, 0x1

    .line 3517
    .end local v0    # "ch":C
    :cond_2
    return v3

    .line 3507
    .restart local v0    # "ch":C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static htc_compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 3304
    sget v0, Landroid/telephony/PhoneNumberUtils;->HTC_MIN_MATCH:I

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static htc_compare(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "match"    # I

    .prologue
    .line 3325
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 3326
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v10, 0x1

    .line 3464
    :goto_0
    return v10

    .line 3326
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 3328
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 3329
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 3333
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->hasAlphabet(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->hasAlphabet(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3334
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 3338
    :cond_6
    move v8, p2

    .line 3340
    .local v8, "matching":I
    sget-boolean v10, Landroid/telephony/PhoneNumberUtils;->USE_8_FOR_CHINA_PREFIX:Z

    if-eqz v10, :cond_8

    .line 3341
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_8

    .line 3342
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_7

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_e

    .line 3343
    :cond_7
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x38

    if-ne v10, v11, :cond_c

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x36

    if-ne v10, v11, :cond_c

    .line 3367
    :cond_8
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .line 3368
    .local v5, "ia":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    .line 3369
    .local v6, "ib":I
    const/4 v7, 0x0

    .line 3371
    .local v7, "matched":I
    :cond_9
    if-ltz v5, :cond_16

    if-ltz v6, :cond_16

    .line 3373
    const/4 v9, 0x0

    .line 3375
    .local v9, "skipCmp":Z
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3377
    .local v1, "ca":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v10

    if-nez v10, :cond_a

    .line 3378
    add-int/lit8 v5, v5, -0x1

    .line 3379
    const/4 v9, 0x1

    .line 3382
    :cond_a
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3384
    .local v2, "cb":C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v10

    if-nez v10, :cond_b

    .line 3385
    add-int/lit8 v6, v6, -0x1

    .line 3386
    const/4 v9, 0x1

    .line 3389
    :cond_b
    if-nez v9, :cond_15

    .line 3390
    if-eq v2, v1, :cond_14

    const/16 v10, 0x3f

    if-eq v1, v10, :cond_14

    const/16 v10, 0x4e

    if-eq v1, v10, :cond_14

    const/16 v10, 0x3f

    if-eq v2, v10, :cond_14

    const/16 v10, 0x4e

    if-eq v2, v10, :cond_14

    .line 3391
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3345
    .end local v1    # "ca":C
    .end local v2    # "cb":C
    .end local v5    # "ia":I
    .end local v6    # "ib":I
    .end local v7    # "matched":I
    .end local v9    # "skipCmp":Z
    :cond_c
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x38

    if-ne v10, v11, :cond_d

    const/4 v10, 0x2

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x36

    if-eq v10, v11, :cond_8

    .line 3350
    :cond_d
    const/16 v8, 0x8

    goto :goto_1

    .line 3352
    :cond_e
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x38

    if-ne v10, v11, :cond_f

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x38

    if-ne v10, v11, :cond_f

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x36

    if-eq v10, v11, :cond_10

    :cond_f
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x38

    if-ne v10, v11, :cond_11

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x38

    if-ne v10, v11, :cond_11

    const/4 v10, 0x2

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x36

    if-ne v10, v11, :cond_11

    .line 3354
    :cond_10
    const/16 v8, 0x8

    goto/16 :goto_1

    .line 3355
    :cond_11
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_12

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-eq v10, v11, :cond_13

    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_8

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_8

    .line 3357
    :cond_13
    const/16 v8, 0x8

    goto/16 :goto_1

    .line 3393
    .restart local v1    # "ca":C
    .restart local v2    # "cb":C
    .restart local v5    # "ia":I
    .restart local v6    # "ib":I
    .restart local v7    # "matched":I
    .restart local v9    # "skipCmp":Z
    :cond_14
    add-int/lit8 v5, v5, -0x1

    .line 3394
    add-int/lit8 v6, v6, -0x1

    .line 3395
    add-int/lit8 v7, v7, 0x1

    .line 3398
    :cond_15
    if-lt v7, v8, :cond_9

    .line 3399
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 3403
    .end local v1    # "ca":C
    .end local v2    # "cb":C
    .end local v9    # "skipCmp":Z
    :cond_16
    if-ge v7, v8, :cond_1b

    .line 3404
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3408
    .local v0, "aLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_17

    if-ne v0, v7, :cond_17

    .line 3409
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 3416
    :cond_17
    move v3, v5

    .line 3417
    .local v3, "dialablePosA":I
    move v4, v6

    .line 3419
    .local v4, "dialablePosB":I
    if-ltz v5, :cond_18

    .line 3420
    invoke-static {p0, v5}, Landroid/telephony/PhoneNumberUtils;->gotoFirstDialablePos(Ljava/lang/String;I)I

    move-result v3

    .line 3423
    :cond_18
    if-ltz v6, :cond_19

    .line 3424
    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->gotoFirstDialablePos(Ljava/lang/String;I)I

    move-result v4

    .line 3427
    :cond_19
    const/4 v10, -0x1

    if-ne v10, v3, :cond_1a

    const/4 v10, -0x1

    if-ne v10, v4, :cond_1a

    .line 3429
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 3432
    :cond_1a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3436
    .end local v0    # "aLen":I
    .end local v3    # "dialablePosA":I
    .end local v4    # "dialablePosB":I
    :cond_1b
    if-lt v7, v8, :cond_1d

    if-ltz v5, :cond_1c

    if-gez v6, :cond_1d

    .line 3437
    :cond_1c
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 3440
    :cond_1d
    if-lt v7, v8, :cond_1e

    .line 3441
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 3450
    :cond_1e
    add-int/lit8 v10, v5, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1f

    add-int/lit8 v10, v6, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 3452
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 3455
    :cond_1f
    add-int/lit8 v10, v5, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_20

    add-int/lit8 v10, v6, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 3457
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 3460
    :cond_20
    add-int/lit8 v10, v6, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_21

    add-int/lit8 v10, v5, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 3462
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 3464
    :cond_21
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 7
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 495
    .local v0, "origLength":I
    const/16 v6, 0x2c

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 496
    .local v2, "pIndex":I
    const/16 v6, 0x3b

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 502
    .local v5, "wIndex":I
    sget-object v6, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 504
    const/16 v6, 0x70

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 505
    .local v1, "p1Index":I
    const/16 v6, 0x77

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 506
    .local v4, "w1Index":I
    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 507
    invoke-static {v5, v4}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v5

    .line 513
    .end local v1    # "p1Index":I
    .end local v4    # "w1Index":I
    :cond_0
    invoke-static {v2, v5}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v3

    .line 515
    .local v3, "trimIndex":I
    if-gez v3, :cond_1

    .line 516
    add-int/lit8 v6, v0, -0x1

    .line 518
    :goto_0
    return v6

    :cond_1
    add-int/lit8 v6, v3, -0x1

    goto :goto_0
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1050
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    .line 1054
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1056
    .local v1, "c":C
    if-nez v1, :cond_1

    .line 1083
    .end local v1    # "c":C
    :cond_0
    return-void

    .line 1059
    .restart local v1    # "c":C
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1068
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 1070
    .local v0, "b":B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    .line 1075
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1076
    if-eqz v1, :cond_0

    .line 1080
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1050
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .prologue
    .line 883
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 896
    :goto_0
    return-object v5

    .line 885
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 886
    .local v3, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 888
    .local v2, "length":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    move v4, v2

    .line 889
    .local v4, "s":I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    .line 891
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 893
    .local v0, "c":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 889
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 896
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final is12Key(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 164
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .param p0, "countryCallingCodeCandidate"    # I

    .prologue
    .line 3058
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomerSpecificDialString(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 7
    .param p0, "dialNum"    # Ljava/lang/String;
    .param p1, "isInCall"    # Z
    .param p2, "numList"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3268
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->matchKddiSpecificDialString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3289
    :cond_0
    :goto_0
    return v4

    .line 3274
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3277
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3281
    const-string v6, ","

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 3282
    .local v3, "specificNum":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3281
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "specificNum":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 3287
    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_3
    move v4, v5

    .line 3289
    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 6
    .param p0, "c"    # C

    .prologue
    const/16 v5, 0x2b

    const/16 v4, 0x2a

    const/16 v3, 0x23

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    sget-object v2, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 173
    const/16 v2, 0x30

    if-lt p0, v2, :cond_0

    const/16 v2, 0x39

    if-le p0, v2, :cond_1

    :cond_0
    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v5, :cond_1

    const/16 v2, 0x4e

    if-ne p0, v2, :cond_2

    .line 176
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 173
    goto :goto_0

    .line 176
    :cond_3
    const/16 v2, 0x30

    if-lt p0, v2, :cond_4

    const/16 v2, 0x39

    if-le p0, v2, :cond_1

    :cond_4
    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v5, :cond_1

    const/16 v2, 0x4e

    if-eq p0, v2, :cond_1

    const/16 v2, 0x3f

    if-eq p0, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1167
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1168
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1169
    const/4 v2, 0x0

    .line 1172
    :goto_1
    return v2

    .line 1167
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1783
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1909
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1767
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1895
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .param p3, "useExactMatch"    # Z

    .prologue
    .line 2008
    if-nez p1, :cond_0

    const/4 v8, 0x0

    .line 2094
    :goto_0
    return v8

    .line 2017
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2018
    const/4 v8, 0x0

    goto :goto_0

    .line 2023
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2025
    const-string v9, "PhoneNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "subId:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", defaultCountryIso:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p2, :cond_4

    const-string v8, "NULL"

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    const-string v3, ""

    .line 2029
    .local v3, "emergencyNumbers":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    .line 2033
    .local v6, "slotId":I
    if-gtz v6, :cond_5

    const-string/jumbo v1, "ril.ecclist"

    .line 2035
    .local v1, "ecclist":Ljava/lang/String;
    :goto_2
    const-string v8, ""

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2037
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "slotId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", emergencyNumbers: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2041
    const-string/jumbo v8, "ro.ril.ecclist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2044
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2047
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v5, :cond_8

    aget-object v2, v0, v4

    .line 2050
    .local v2, "emergencyNum":Ljava/lang/String;
    if-nez p3, :cond_3

    const-string v8, "BR"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2051
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2052
    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "ecclist":Ljava/lang/String;
    .end local v2    # "emergencyNum":Ljava/lang/String;
    .end local v3    # "emergencyNumbers":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "slotId":I
    :cond_4
    move-object v8, p2

    .line 2025
    goto :goto_1

    .line 2033
    .restart local v3    # "emergencyNumbers":Ljava/lang/String;
    .restart local v6    # "slotId":I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ril.ecclist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2055
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "ecclist":Ljava/lang/String;
    .restart local v2    # "emergencyNum":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2056
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2047
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2061
    .end local v2    # "emergencyNum":Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2064
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_9
    const-string v8, "PhoneNumberUtils"

    const-string v9, "System property doesn\'t provide any emergency numbers. Use embedded logic for determining ones."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    if-gez v6, :cond_a

    const-string v3, "112,911,000,08,110,118,119,999"

    .line 2072
    :goto_4
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_5
    if-ge v4, v5, :cond_d

    aget-object v2, v0, v4

    .line 2073
    .restart local v2    # "emergencyNum":Ljava/lang/String;
    if-eqz p3, :cond_b

    .line 2074
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2075
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2070
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "emergencyNum":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_a
    const-string v3, "112,911"

    goto :goto_4

    .line 2078
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "emergencyNum":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_b
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2079
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2072
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2085
    .end local v2    # "emergencyNum":Ljava/lang/String;
    :cond_d
    if-eqz p2, :cond_f

    .line 2086
    new-instance v7, Lcom/android/i18n/phonenumbers/ShortNumberUtil;

    invoke-direct {v7}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;-><init>()V

    .line 2087
    .local v7, "util":Lcom/android/i18n/phonenumbers/ShortNumberUtil;
    if-eqz p3, :cond_e

    .line 2088
    invoke-virtual {v7, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_0

    .line 2090
    :cond_e
    invoke-virtual {v7, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_0

    .line 2094
    .end local v7    # "util":Lcom/android/i18n/phonenumbers/ShortNumberUtil;
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 1881
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 1984
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    .line 1856
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    const/4 v1, 0x0

    .line 1163
    :goto_0
    return v1

    .line 1162
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1163
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 158
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2120
    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2106
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "useExactMatch"    # Z

    .prologue
    .line 2226
    const-string v3, "country_detector"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2228
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2229
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2236
    .local v0, "countryIso":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v0, p3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 2231
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2232
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2233
    .restart local v0    # "countryIso":Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 2201
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 2690
    const/4 v2, 0x0

    .line 2691
    .local v2, "retVal":Z
    if-eqz p0, :cond_2

    .line 2692
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 2693
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2695
    const/4 v2, 0x1

    .line 2696
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 2697
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2698
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2699
    const/4 v2, 0x0

    .line 2708
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 2696
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2706
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 6
    .param p0, "c"    # C

    .prologue
    const/16 v5, 0x2b

    const/16 v4, 0x2a

    const/16 v3, 0x23

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    sget-object v2, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 193
    const/16 v2, 0x30

    if-lt p0, v2, :cond_0

    const/16 v2, 0x39

    if-le p0, v2, :cond_1

    :cond_0
    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v5, :cond_1

    const/16 v2, 0x4e

    if-eq p0, v2, :cond_1

    const/16 v2, 0x3b

    if-eq p0, v2, :cond_1

    const/16 v2, 0x2c

    if-ne p0, v2, :cond_2

    .line 197
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 193
    goto :goto_0

    .line 197
    :cond_3
    const/16 v2, 0x30

    if-lt p0, v2, :cond_4

    const/16 v2, 0x39

    if-le p0, v2, :cond_1

    :cond_4
    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v5, :cond_1

    const/16 v2, 0x4e

    if-eq p0, v2, :cond_1

    const/16 v2, 0x3f

    if-eq p0, v2, :cond_1

    const/16 v2, 0x77

    if-eq p0, v2, :cond_1

    const/16 v2, 0x3b

    if-eq p0, v2, :cond_1

    const/16 v2, 0x70

    if-eq p0, v2, :cond_1

    const/16 v2, 0x2c

    if-eq p0, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1176
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1177
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1178
    const/4 v2, 0x0

    .line 1181
    :goto_1
    return v2

    .line 1176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1181
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isNonSeparator_FDN(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 206
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x70

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2715
    const/4 v1, 0x0

    .line 2716
    .local v1, "retVal":Z
    if-eqz p0, :cond_1

    .line 2717
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2718
    .local v0, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2719
    const/4 v1, 0x1

    .line 2724
    .end local v0    # "newDialStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2722
    :cond_1
    const-string/jumbo v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 229
    const/16 v0, 0x70

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1833
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1962
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1807
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1936
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2175
    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2148
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 184
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 240
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 5
    .param p0, "c"    # C

    .prologue
    const/16 v4, 0x3b

    const/16 v3, 0x2c

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 217
    sget-object v2, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 219
    if-eq p0, v3, :cond_0

    if-ne p0, v4, :cond_1

    :cond_0
    move v0, v1

    .line 222
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x70

    if-eq p0, v2, :cond_3

    if-eq p0, v3, :cond_3

    const/16 v2, 0x77

    if-eq p0, v2, :cond_3

    if-eq p0, v4, :cond_3

    const/16 v2, 0x3f

    if-eq p0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne p0, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static isToneWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 234
    const/16 v0, 0x77

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2663
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2664
    const/4 v0, 0x1

    .line 2666
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2740
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceMailNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2266
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2286
    if-nez p0, :cond_1

    .line 2287
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2291
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2297
    .local v2, "vmNumber":Ljava/lang/String;
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2301
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "vmNumber":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 2289
    :cond_1
    :try_start_1
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    goto :goto_0

    .line 2292
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 2293
    .local v0, "ex":Ljava/lang/SecurityException;
    goto :goto_1
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2250
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1149
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 482
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2931
    const/4 v2, 0x0

    .line 2932
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 2933
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2935
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 2954
    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2960
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 2937
    .restart local v0    # "c":C
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    .line 2932
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2938
    :cond_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2939
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2943
    :pswitch_2
    if-ne v0, v6, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2944
    :cond_4
    if-ne v0, v7, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2945
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2949
    :pswitch_3
    if-ne v0, v7, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2950
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2960
    .end local v0    # "c":C
    :cond_7
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_1

    .line 2935
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 2970
    const/4 v2, 0x0

    .line 2971
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 2972
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2974
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 3006
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3010
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 2976
    .restart local v0    # "c":C
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/4 v2, 0x1

    .line 2971
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2977
    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2978
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2982
    :pswitch_1
    if-ne v0, v5, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2983
    :cond_4
    if-ne v0, v6, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2984
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2988
    :pswitch_2
    if-ne v0, v6, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2989
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2995
    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x6

    goto :goto_2

    .line 2996
    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3001
    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3002
    :cond_8
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3010
    .end local v0    # "c":C
    :cond_9
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 2974
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static matchKddiSpecificDialString(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialNum"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3239
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportKddiSpecificDialString()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3256
    :cond_0
    return v2

    .line 3243
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3245
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3246
    .local v3, "tmp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 3247
    .local v1, "len":I
    const/4 v4, 0x2

    if-gt v1, v4, :cond_0

    .line 3249
    const/4 v2, 0x1

    .line 3250
    .local v2, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3251
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3252
    const/4 v2, 0x0

    .line 3250
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 3018
    const/4 v1, 0x0

    .line 3020
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 3021
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3023
    .local v0, "c":C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 3024
    const/4 v1, 0x1

    .line 3020
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3025
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3026
    const/4 v1, 0x0

    .line 3030
    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_2
    return v1
.end method

.method private static minPositive(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 470
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 471
    if-ge p0, p1, :cond_1

    .line 477
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_1
    move p0, p1

    .line 471
    goto :goto_0

    .line 472
    :cond_2
    if-gez p0, :cond_0

    .line 474
    if-ltz p1, :cond_3

    move p0, p1

    .line 475
    goto :goto_0

    .line 477
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1191
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1201
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1699
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1700
    const-string v5, ""

    .line 1717
    :goto_0
    return-object v5

    .line 1703
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1704
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1705
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 1706
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1708
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1709
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 1710
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1705
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1711
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 1712
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1713
    :cond_3
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    .line 1714
    :cond_5
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1717
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1214
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 15
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .prologue
    .line 1223
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1224
    .local v6, "numberLenReal":I
    move v5, v6

    .line 1225
    .local v5, "numberLenEffective":I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    const/4 v3, 0x1

    .line 1226
    .local v3, "hasPlus":Z
    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 1228
    :cond_0
    if-nez v5, :cond_2

    const/4 v9, 0x0

    .line 1253
    :goto_1
    return-object v9

    .line 1225
    .end local v3    # "hasPlus":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1230
    .restart local v3    # "hasPlus":Z
    :cond_2
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1231
    .local v10, "resultLen":I
    const/4 v2, 0x1

    .line 1232
    .local v2, "extraBytes":I
    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1233
    :cond_3
    add-int/2addr v10, v2

    .line 1235
    new-array v9, v10, [B

    .line 1237
    .local v9, "result":[B
    const/4 v1, 0x0

    .line 1238
    .local v1, "digitCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v6, :cond_6

    .line 1239
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1240
    .local v0, "c":C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_4

    .line 1238
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1241
    :cond_4
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v11, 0x4

    .line 1242
    .local v11, "shift":I
    :goto_4
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1243
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1241
    .end local v11    # "shift":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 1247
    .end local v0    # "c":C
    :cond_6
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1249
    :cond_7
    const/4 v7, 0x0

    .line 1250
    .local v7, "offset":I
    if-eqz p1, :cond_8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1251
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_8
    if-eqz v3, :cond_9

    const/16 v12, 0x91

    :goto_5
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_1

    :cond_9
    const/16 v12, 0x81

    goto :goto_5
.end method

.method public static numberToCalledPartyBCD_withoutTOA(Ljava/lang/String;)[B
    .locals 11
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 1258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1260
    .local v3, "numberLenReal":I
    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_0

    div-int/lit8 v5, v3, 0x2

    .line 1262
    .local v5, "resultLen":I
    :goto_0
    new-array v4, v5, [B

    .line 1264
    .local v4, "result":[B
    const/4 v1, 0x0

    .line 1265
    .local v1, "digitCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1266
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1268
    .local v0, "c":C
    and-int/lit8 v7, v1, 0x1

    if-ne v7, v10, :cond_1

    const/4 v6, 0x4

    .line 1269
    .local v6, "shift":I
    :goto_2
    shr-int/lit8 v7, v1, 0x1

    aget-byte v8, v4, v7

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v9

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v6

    int-to-byte v9, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1270
    add-int/lit8 v1, v1, 0x1

    .line 1265
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1260
    .end local v0    # "c":C
    .end local v1    # "digitCount":I
    .end local v2    # "i":I
    .end local v4    # "result":[B
    .end local v5    # "resultLen":I
    .end local v6    # "shift":I
    :cond_0
    add-int/lit8 v7, v3, 0x1

    div-int/lit8 v5, v7, 0x2

    goto :goto_0

    .line 1268
    .restart local v0    # "c":C
    .restart local v1    # "digitCount":I
    .restart local v2    # "i":I
    .restart local v4    # "result":[B
    .restart local v5    # "resultLen":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 1274
    .end local v0    # "c":C
    :cond_2
    and-int/lit8 v7, v1, 0x1

    if-ne v7, v10, :cond_3

    shr-int/lit8 v7, v1, 0x1

    aget-byte v8, v4, v7

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1277
    :cond_3
    return-object v4
.end method

.method public static parseGlobalPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x5

    .line 3691
    move-object v1, p0

    .line 3693
    .local v1, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3694
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeAllSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3696
    .local v3, "workString":Ljava/lang/String;
    const-string v4, "+8860"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3697
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 3698
    .local v0, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3700
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3701
    if-le v0, v6, :cond_0

    .line 3702
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3705
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3713
    .end local v0    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "workString":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static processPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "networkDialStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2857
    move-object v0, p0

    .line 2860
    .local v0, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 2864
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getCdmaInternationalAccessCode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2867
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1

    .line 2868
    const-string v1, "+62"

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->m_CDMA_InternationalAccessCode:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2877
    :cond_0
    :goto_0
    return-object v0

    .line 2870
    :cond_1
    const-string v1, "[+]"

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->m_CDMA_InternationalAccessCode:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2874
    :cond_2
    const-string v1, "[+]"

    const-string v2, "00"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2775
    move-object v1, p0

    .line 2781
    .local v1, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 2784
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2786
    .local v0, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2788
    move-object v1, v0

    .line 2795
    .end local v0    # "newStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 2791
    .restart local v0    # "newStr":Ljava/lang/String;
    :cond_1
    const-string v2, "[+]"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static final removeAllSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 3725
    move-object v1, p0

    .line 3727
    .local v1, "result":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3729
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3730
    const/16 v3, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    .line 3731
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3729
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3735
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3738
    .end local v0    # "index":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object v1
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1555
    const/4 v0, 0x0

    .line 1556
    .local v0, "p":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1557
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1558
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1560
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1563
    :cond_1
    return-void
.end method

.method public static removeNonFirstPlus(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 3571
    if-nez p0, :cond_0

    .line 3572
    const/4 v5, 0x0

    .line 3586
    :goto_0
    return-object v5

    .line 3575
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 3576
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3577
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3579
    .local v1, "firstCharAdded":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 3580
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3581
    .local v0, "c":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1

    if-nez v1, :cond_2

    .line 3582
    :cond_1
    const/4 v1, 0x1

    .line 3583
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3579
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3586
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1728
    .local v5, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 1729
    .local v1, "c":C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1730
    .local v2, "digit":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 1731
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1728
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1733
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1736
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static final safeGetProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 3741
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->safeGetProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final safeGetProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 3745
    const/4 v1, 0x0

    .line 3748
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3749
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3757
    :goto_0
    return-object v1

    .line 3751
    :cond_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 3753
    :catch_0
    move-exception v0

    .line 3754
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneNumberUtils"

    const-string/jumbo v3, "safeGetProperty"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 2639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2640
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2641
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2640
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2641
    :cond_0
    const-string v2, " "

    goto :goto_1

    .line 2648
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .prologue
    .line 907
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 913
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 909
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x91

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 407
    if-nez p0, :cond_0

    .line 408
    const/4 v5, 0x0

    .line 424
    :goto_0
    return-object v5

    .line 410
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 411
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 413
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 414
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 416
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 417
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 418
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 420
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 424
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 857
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "np":Ljava/lang/String;
    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 923
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 924
    const/16 v0, 0x91

    .line 927
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x81

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 3097
    const/4 v5, 0x0

    .line 3098
    .local v5, "state":I
    const/4 v0, 0x0

    .line 3099
    .local v0, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 3100
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 3101
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3102
    .local v1, "ch":C
    packed-switch v5, :pswitch_data_0

    .line 3171
    .end local v1    # "ch":C
    :cond_0
    :goto_1
    return-object v6

    .line 3104
    .restart local v1    # "ch":C
    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_2

    const/4 v5, 0x1

    .line 3100
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3105
    :cond_2
    if-ne v1, v9, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    .line 3106
    :cond_3
    if-ne v1, v8, :cond_4

    .line 3107
    if-eqz p1, :cond_0

    .line 3108
    const/16 v5, 0x8

    goto :goto_2

    .line 3112
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3118
    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    .line 3119
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    .line 3120
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3126
    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    .line 3127
    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3138
    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 3139
    .local v4, "ret":I
    if-lez v4, :cond_c

    .line 3140
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 3141
    const/16 v7, 0x64

    if-ge v0, v7, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3142
    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 3144
    :cond_9
    const/4 v7, 0x1

    if-eq v5, v7, :cond_a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_a

    const/4 v7, 0x5

    if-ne v5, v7, :cond_b

    .line 3145
    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    .line 3147
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3149
    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3155
    .end local v4    # "ret":I
    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_2

    .line 3156
    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3161
    :pswitch_5
    if-ne v1, v10, :cond_0

    .line 3162
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 3102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 3068
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 3069
    add-int/lit8 v0, p0, -0x30

    .line 3071
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 3184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3185
    .local v2, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3186
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3187
    .local v0, "ch":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_1

    .line 3188
    add-int/lit8 v3, v1, 0x1

    .line 3193
    .end local v0    # "ch":C
    :cond_0
    return v3

    .line 3189
    .restart local v0    # "ch":C
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2579
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    .locals 0
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2596
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 2597
    return-void
.end method
