.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final GMT:Ljava/lang/String; = "GMT"

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

.field private static final TAG_QUOTE_ASCII_CHAR:I = 0x64

.field private static final TAG_QUOTE_CHARS:I = 0x65

.field private static final cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient compiledPattern:[C

.field private defaultCenturyStart:Ljava/util/Date;

.field private transient defaultCenturyStartYear:I

.field private formatData:Ljava/text/DateFormatSymbols;

.field private transient hasFollowingMinusSign:Z

.field private locale:Ljava/util/Locale;

.field private transient minusSign:C

.field private transient originalNumberFormat:Ljava/text/NumberFormat;

.field private transient originalNumberPattern:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private serialVersionOnStream:I

.field transient useDateFormatSymbols:Z

.field private transient zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x18

    const-class v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ljava/text/SimpleDateFormat;->-assertionsDisabled:Z

    .line 508
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 507
    sput-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    .line 1007
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 1006
    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    .line 1025
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    .line 1043
    new-array v0, v3, [Ljava/text/DateFormat$Field;

    .line 1044
    sget-object v3, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    aput-object v3, v0, v1

    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    aput-object v1, v0, v4

    .line 1045
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1046
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1047
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1048
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1049
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 1050
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1051
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1052
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 1054
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 1055
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 1043
    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    .line 409
    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    .line 1007
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xb
        0xb
        0xc
        0xd
        0xe
        0x7
        0x6
        0x8
        0x3
        0x4
        0x9
        0xa
        0xa
        0xf
        0xf
        0x11
        0x3e8
        0xf
        0x2
        0x7
    .end array-data

    .line 1025
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x11
        0x1
        0x9
        0x11
        0x2
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 538
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V

    .line 537
    return-void
.end method

.method constructor <init>(IILjava/util/Locale;)V
    .locals 5
    .param p1, "timeStyle"    # I
    .param p2, "dateStyle"    # I
    .param p3, "loc"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 606
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 434
    iput v4, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 453
    const/16 v2, 0x2d

    iput-char v2, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 459
    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 607
    if-nez p3, :cond_0

    .line 608
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 611
    :cond_0
    iput-object p3, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 613
    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 615
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    iput-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 616
    invoke-static {p3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 617
    .local v1, "localeData":Llibcore/icu/LocaleData;
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 618
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    .line 619
    invoke-virtual {v1, p2}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 620
    invoke-virtual {v1, p1}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 622
    .local v0, "dateTimeArgs":[Ljava/lang/Object;
    const-string v2, "{0} {1}"

    invoke-static {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 634
    .end local v0    # "dateTimeArgs":[Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 606
    return-void

    .line 624
    :cond_1
    if-ltz p1, :cond_2

    .line 625
    invoke-virtual {v1, p1}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    goto :goto_0

    .line 627
    :cond_2
    if-ltz p2, :cond_3

    .line 628
    invoke-virtual {v1, p2}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    goto :goto_0

    .line 631
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No date or time style specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 554
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 552
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatSymbols"    # Ljava/text/DateFormatSymbols;

    .prologue
    const/4 v1, 0x1

    .line 591
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 434
    iput v1, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 453
    const/16 v0, 0x2d

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 593
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 597
    :cond_1
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 598
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 599
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 600
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 601
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 602
    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 591
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 434
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 453
    const/16 v0, 0x2d

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 571
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 575
    :cond_1
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 576
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 577
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 578
    iput-object p2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 579
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 569
    return-void
.end method

.method private checkNegativeNumberExpression()V
    .locals 5

    .prologue
    .line 2447
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    instance-of v3, v3, Ljava/text/DecimalFormat;

    if-eqz v3, :cond_0

    .line 2448
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v4, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2446
    :cond_0
    :goto_0
    return-void

    .line 2449
    :cond_1
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 2450
    .local v1, "numberPattern":Ljava/lang/String;
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2451
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 2453
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2456
    .local v2, "separatorIndex":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 2457
    const/16 v3, 0x2d

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2458
    .local v0, "minusIndex":I
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v0, v3, :cond_2

    .line 2459
    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v0, v3, :cond_2

    .line 2460
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 2461
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    iput-char v3, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 2464
    .end local v0    # "minusIndex":I
    :cond_2
    iput-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    .line 2466
    .end local v2    # "separatorIndex":I
    :cond_3
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    goto :goto_0
.end method

.method private compile(Ljava/lang/String;)[C
    .locals 18
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 733
    .local v11, "length":I
    const/4 v7, 0x0

    .line 734
    .local v7, "inQuote":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v15, v11, 0x2

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 735
    .local v3, "compiledPattern":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 736
    .local v14, "tmpBuffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 737
    .local v4, "count":I
    const/4 v9, -0x1

    .line 739
    .local v9, "lastTag":I
    const/4 v6, 0x0

    .end local v14    # "tmpBuffer":Ljava/lang/StringBuilder;
    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_16

    .line 740
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 742
    .local v1, "c":C
    const/16 v15, 0x27

    if-ne v1, v15, :cond_8

    .line 745
    add-int/lit8 v15, v6, 0x1

    if-ge v15, v11, :cond_2

    .line 746
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 747
    const/16 v15, 0x27

    if-ne v1, v15, :cond_2

    .line 748
    add-int/lit8 v6, v6, 0x1

    .line 749
    if-eqz v4, :cond_0

    .line 750
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 751
    const/4 v9, -0x1

    .line 752
    const/4 v4, 0x0

    .line 754
    :cond_0
    if-eqz v7, :cond_1

    .line 755
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 757
    :cond_1
    or-int/lit16 v15, v1, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 762
    :cond_2
    if-nez v7, :cond_5

    .line 763
    if-eqz v4, :cond_3

    .line 764
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 765
    const/4 v9, -0x1

    .line 766
    const/4 v4, 0x0

    .line 768
    :cond_3
    if-nez v14, :cond_4

    .line 769
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 773
    :goto_2
    const/4 v7, 0x1

    goto :goto_1

    .line 771
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 775
    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 776
    .local v10, "len":I
    const/4 v15, 0x1

    if-ne v10, v15, :cond_7

    .line 777
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 778
    .local v2, "ch":C
    const/16 v15, 0x80

    if-ge v2, v15, :cond_6

    .line 779
    or-int/lit16 v15, v2, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 788
    .end local v2    # "ch":C
    :goto_3
    const/4 v7, 0x0

    goto :goto_1

    .line 781
    .restart local v2    # "ch":C
    :cond_6
    const/16 v15, 0x6501

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 785
    .end local v2    # "ch":C
    :cond_7
    const/16 v15, 0x65

    invoke-static {v15, v10, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 786
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 792
    .end local v10    # "len":I
    :cond_8
    if-eqz v7, :cond_9

    .line 793
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 796
    :cond_9
    const/16 v15, 0x61

    if-lt v1, v15, :cond_a

    const/16 v15, 0x7a

    if-le v1, v15, :cond_12

    :cond_a
    const/16 v15, 0x41

    if-lt v1, v15, :cond_b

    const/16 v15, 0x5a

    if-le v1, v15, :cond_12

    .line 797
    :cond_b
    if-eqz v4, :cond_c

    .line 798
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 799
    const/4 v9, -0x1

    .line 800
    const/4 v4, 0x0

    .line 802
    :cond_c
    const/16 v15, 0x80

    if-ge v1, v15, :cond_d

    .line 804
    or-int/lit16 v15, v1, 0x6400

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 809
    :cond_d
    add-int/lit8 v8, v6, 0x1

    .local v8, "j":I
    :goto_4
    if-ge v8, v11, :cond_e

    .line 810
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 811
    .local v5, "d":C
    const/16 v15, 0x27

    if-eq v5, v15, :cond_e

    const/16 v15, 0x61

    if-lt v5, v15, :cond_f

    const/16 v15, 0x7a

    if-gt v5, v15, :cond_f

    .line 815
    .end local v5    # "d":C
    :cond_e
    sub-int v15, v8, v6

    or-int/lit16 v15, v15, 0x6500

    int-to-char v15, v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    :goto_5
    if-ge v6, v8, :cond_11

    .line 817
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 811
    .restart local v5    # "d":C
    :cond_f
    const/16 v15, 0x41

    if-lt v5, v15, :cond_10

    const/16 v15, 0x5a

    if-le v5, v15, :cond_e

    .line 809
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 819
    .end local v5    # "d":C
    :cond_11
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 825
    .end local v8    # "j":I
    :cond_12
    const-string v15, "GyMdkHmsSEDFwWahKzZYuXLc"

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .local v13, "tag":I
    const/4 v15, -0x1

    if-ne v13, v15, :cond_13

    .line 826
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Illegal pattern character \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 827
    const-string v17, "\'"

    .line 826
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 829
    :cond_13
    const/4 v15, -0x1

    if-eq v9, v15, :cond_14

    if-ne v9, v13, :cond_15

    .line 830
    :cond_14
    move v9, v13

    .line 831
    add-int/lit8 v4, v4, 0x1

    .line 832
    goto/16 :goto_1

    .line 834
    :cond_15
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 835
    move v9, v13

    .line 836
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 839
    .end local v1    # "c":C
    .end local v13    # "tag":I
    :cond_16
    if-eqz v7, :cond_17

    .line 840
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Unterminated quote"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 843
    :cond_17
    if-eqz v4, :cond_18

    .line 844
    invoke-static {v9, v4, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 848
    :cond_18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 849
    .restart local v10    # "len":I
    new-array v12, v10, [C

    .line 850
    .local v12, "r":[C
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v10, v12, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 851
    return-object v12
.end method

.method private static final encode(IILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "length"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 858
    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 859
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ISO 8601 format: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_0
    const/16 v0, 0xff

    if-ge p1, v0, :cond_1

    .line 862
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 857
    :goto_0
    return-void

    .line 864
    :cond_1
    shl-int/lit8 v0, p0, 0x8

    or-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 865
    ushr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 866
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;
    .locals 8
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;

    .prologue
    .line 936
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 938
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v5

    .line 940
    .local v5, "useDateFormatSymbols":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 941
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v0, v0, v6

    ushr-int/lit8 v1, v0, 0x8

    .line 942
    .local v1, "tag":I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget-char v0, v0, v6

    and-int/lit16 v2, v0, 0xff

    .line 943
    .local v2, "count":I
    const/16 v0, 0xff

    if-ne v2, v0, :cond_1

    .line 944
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-char v0, v0, v7

    shl-int/lit8 v2, v0, 0x10

    .line 945
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-char v0, v0, v6

    or-int/2addr v2, v0

    move v6, v7

    .line 948
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_1
    packed-switch v1, :pswitch_data_0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p2

    .line 959
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V

    goto :goto_0

    .line 950
    :pswitch_0
    int-to-char v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 954
    :pswitch_1
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    invoke-virtual {p2, v0, v6, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 955
    add-int/2addr v6, v2

    .line 956
    goto :goto_0

    .line 963
    .end local v1    # "tag":I
    .end local v2    # "count":I
    :cond_0
    return-object p2

    .end local v6    # "i":I
    .restart local v1    # "tag":I
    .restart local v2    # "count":I
    .restart local v7    # "i":I
    :cond_1
    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 948
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "maxIntCount"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z
    .param p6, "standalone"    # Z

    .prologue
    const/4 v3, 0x3

    .line 1294
    const/4 v0, 0x0

    .line 1295
    .local v0, "current":Ljava/lang/String;
    if-eqz p5, :cond_8

    .line 1297
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 1298
    if-eqz p6, :cond_2

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    .line 1307
    :goto_0
    if-eqz v1, :cond_0

    .line 1308
    aget-object v0, v1, p2

    .line 1316
    .end local v0    # "current":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 1317
    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v2, p1, p3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    .line 1320
    :cond_1
    return-object v0

    .line 1298
    .restart local v0    # "current":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    .local v1, "months":[Ljava/lang/String;
    goto :goto_0

    .line 1299
    .end local v1    # "months":[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 1300
    if-eqz p6, :cond_4

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getTinyStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "months":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getTinyMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    .line 1301
    .end local v1    # "months":[Ljava/lang/String;
    :cond_5
    if-ne p1, v3, :cond_7

    .line 1302
    if-eqz p6, :cond_6

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "months":[Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    goto :goto_0

    .line 1304
    .end local v1    # "months":[Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    .local v1, "months":[Ljava/lang/String;
    goto :goto_0

    .line 1311
    .end local v1    # "months":[Ljava/lang/String;
    :cond_8
    if-ge p1, v3, :cond_0

    .line 1312
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private formatWeekday(IIZZ)Ljava/lang/String;
    .locals 2
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "useDateFormatSymbols"    # Z
    .param p4, "standalone"    # Z

    .prologue
    .line 1274
    if-eqz p3, :cond_5

    .line 1276
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1277
    if-eqz p4, :cond_0

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, "weekdays":[Ljava/lang/String;
    :goto_0
    aget-object v1, v0, p2

    return-object v1

    .line 1277
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    .line 1278
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1280
    if-eqz p4, :cond_2

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    .line 1283
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_4

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    goto :goto_0

    .line 1289
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method private final getCalendarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2236
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Ljava/util/Locale;)V
    .locals 2
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 640
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 643
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 644
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 645
    invoke-static {p1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 646
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 649
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 653
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    .line 638
    return-void
.end method

.method private initializeCalendar(Ljava/util/Locale;)V
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 657
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_2

    .line 658
    sget-boolean v0, Ljava/text/SimpleDateFormat;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 663
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 656
    :cond_2
    return-void
.end method

.method private initializeDefaultCentury()V
    .locals 4

    .prologue
    .line 874
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 875
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/16 v2, -0x50

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 876
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 873
    return-void
.end method

.method private isDigit(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 1776
    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isGregorianCalendar()Z
    .locals 2

    .prologue
    .line 2247
    const-string v0, "java.util.GregorianCalendar"

    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->getCalendarName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private matchDSTString(Ljava/lang/String;III[[Ljava/lang/String;)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "zoneIndex"    # I
    .param p4, "standardIndex"    # I
    .param p5, "zoneStrings"    # [[Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1630
    add-int/lit8 v6, p4, 0x2

    .line 1631
    .local v6, "index":I
    aget-object v0, p5, p3

    aget-object v3, v0, v6

    .line 1633
    .local v3, "zoneName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    .line 1632
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    return v1

    .line 1636
    :cond_0
    return v4
.end method

.method private matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p5, "calb"    # Ljava/text/CalendarBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/text/CalendarBuilder;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1595
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p4, :cond_3

    .line 1596
    const/4 v6, 0x0

    .line 1598
    .local v6, "bestMatch":Ljava/lang/String;
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v6    # "bestMatch":Ljava/lang/String;
    .local v7, "name$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1599
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1600
    .local v5, "length":I
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-le v5, v0, :cond_0

    .line 1601
    :cond_1
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    move-object v6, v3

    .local v6, "bestMatch":Ljava/lang/String;
    goto :goto_0

    .line 1607
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "bestMatch":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 1608
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p5, p3, v0}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1609
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    return v0

    .line 1612
    .end local v7    # "name$iterator":Ljava/util/Iterator;
    :cond_3
    neg-int v0, p2

    return v0
.end method

.method private matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I
    .locals 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1549
    const/16 v17, 0x0

    .line 1550
    .local v17, "i":I
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    .line 1552
    .local v16, "count":I
    const/4 v2, 0x7

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    const/16 v17, 0x1

    .line 1558
    :cond_0
    const/4 v15, 0x0

    .local v15, "bestMatchLength":I
    const/4 v14, -0x1

    .line 1559
    .local v14, "bestMatch":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 1561
    aget-object v2, p4, v17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 1564
    .local v7, "length":I
    if-le v7, v15, :cond_1

    .line 1565
    aget-object v5, p4, v17

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    .line 1564
    if-eqz v2, :cond_1

    .line 1567
    move/from16 v14, v17

    .line 1568
    move v15, v7

    .line 1573
    :cond_1
    aget-object v2, p4, v17

    add-int/lit8 v3, v7, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 1574
    add-int/lit8 v2, v7, -0x1

    if-le v2, v15, :cond_2

    .line 1575
    aget-object v11, p4, v17

    add-int/lit8 v13, v7, -0x1

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move/from16 v10, p2

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    .line 1573
    if-eqz v2, :cond_2

    .line 1576
    move/from16 v14, v17

    .line 1577
    add-int/lit8 v15, v7, -0x1

    .line 1559
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1580
    .end local v7    # "length":I
    :cond_3
    if-ltz v14, :cond_4

    .line 1582
    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1583
    add-int v2, p2, v15

    return v2

    .line 1585
    :cond_4
    move/from16 v0, p2

    neg-int v2, v0

    return v2
.end method

.method private matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "zoneNames"    # [Ljava/lang/String;

    .prologue
    .line 1616
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x4

    if-gt v6, v0, :cond_1

    .line 1619
    aget-object v3, p3, v6

    .line 1621
    .local v3, "zoneName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1620
    const/4 v1, 0x1

    .line 1621
    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    .line 1620
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    return v6

    .line 1616
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1625
    .end local v3    # "zoneName":Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .locals 2
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 883
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 884
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 885
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    .line 882
    return-void
.end method

.method private parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 1421
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->checkNegativeNumberExpression()V

    .line 1423
    move-object/from16 v0, p2

    iget v4, v0, Ljava/text/ParsePosition;->index:I

    .line 1424
    .local v4, "start":I
    move/from16 v18, v4

    .line 1425
    .local v18, "oldStart":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    .line 1427
    .local v20, "textLength":I
    const/4 v2, 0x1

    new-array v8, v2, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v2, v8, v3

    .line 1429
    .local v8, "ambiguousYear":[Z
    new-instance v11, Ljava/text/CalendarBuilder;

    invoke-direct {v11}, Ljava/text/CalendarBuilder;-><init>()V

    .line 1431
    .local v11, "calb":Ljava/text/CalendarBuilder;
    const/4 v15, 0x0

    .local v15, "i":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v2, v2

    if-ge v15, v2, :cond_a

    .line 1432
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    ushr-int/lit8 v5, v2, 0x8

    .line 1433
    .local v5, "tag":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .local v16, "i":I
    aget-char v2, v2, v15

    and-int/lit16 v6, v2, 0xff

    .line 1434
    .local v6, "count":I
    const/16 v2, 0xff

    if-ne v6, v2, :cond_c

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    aget-char v2, v2, v16

    shl-int/lit8 v6, v2, 0x10

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .restart local v16    # "i":I
    aget-char v2, v2, v15

    or-int/2addr v6, v2

    move/from16 v15, v16

    .line 1439
    .end local v16    # "i":I
    .restart local v15    # "i":I
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 1466
    const/4 v7, 0x0

    .line 1476
    .local v7, "obeyCount":Z
    const/4 v10, 0x0

    .line 1478
    .local v10, "useFollowingMinusSignAsDelimiter":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v2, v2

    if-ge v15, v2, :cond_3

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    ushr-int/lit8 v17, v2, 0x8

    .line 1480
    .local v17, "nextTag":I
    const/16 v2, 0x64

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 1481
    const/16 v2, 0x65

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 1482
    const/4 v7, 0x1

    .line 1485
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    if-eqz v2, :cond_3

    .line 1486
    const/16 v2, 0x64

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 1487
    const/16 v2, 0x65

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 1489
    :cond_2
    const/16 v2, 0x64

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v2, v2, v15

    and-int/lit16 v12, v2, 0xff

    .line 1495
    .local v12, "c":I
    :goto_2
    move-object/from16 v0, p0

    iget-char v2, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v12, v2, :cond_3

    .line 1496
    const/4 v10, 0x1

    .end local v12    # "c":I
    .end local v17    # "nextTag":I
    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    .line 1500
    invoke-direct/range {v2 .. v11}, Ljava/text/SimpleDateFormat;->subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I

    move-result v4

    .line 1503
    if-gez v4, :cond_0

    .line 1504
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1505
    const/4 v2, 0x0

    return-object v2

    .line 1441
    .end local v7    # "obeyCount":Z
    .end local v10    # "useFollowingMinusSignAsDelimiter":Z
    :pswitch_0
    move/from16 v0, v20

    if-ge v4, v0, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v3, v6

    if-eq v2, v3, :cond_5

    .line 1442
    :cond_4
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1443
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 1444
    const/4 v2, 0x0

    return-object v2

    .line 1446
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 1447
    goto/16 :goto_0

    :pswitch_1
    move v13, v6

    .end local v6    # "count":I
    .local v13, "count":I
    move/from16 v16, v15

    .line 1450
    .end local v15    # "i":I
    .restart local v16    # "i":I
    :goto_3
    add-int/lit8 v6, v13, -0x1

    .end local v13    # "count":I
    .restart local v6    # "count":I
    if-lez v13, :cond_8

    .line 1451
    move/from16 v0, v20

    if-ge v4, v0, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    aget-char v3, v3, v16

    if-eq v2, v3, :cond_7

    .line 1452
    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1453
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 1454
    const/4 v2, 0x0

    return-object v2

    .end local v15    # "i":I
    .restart local v16    # "i":I
    :cond_6
    move/from16 v15, v16

    .line 1451
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto :goto_4

    .line 1456
    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v13, v6

    .end local v6    # "count":I
    .restart local v13    # "count":I
    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_3

    .end local v13    # "count":I
    .restart local v6    # "count":I
    :cond_8
    move/from16 v15, v16

    .line 1458
    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_0

    .line 1492
    .restart local v7    # "obeyCount":Z
    .restart local v10    # "useFollowingMinusSignAsDelimiter":Z
    .restart local v17    # "nextTag":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v3, v15, 0x1

    aget-char v12, v2, v3

    .restart local v12    # "c":I
    goto :goto_2

    .line 1514
    .end local v5    # "tag":I
    .end local v6    # "count":I
    .end local v7    # "obeyCount":Z
    .end local v10    # "useFollowingMinusSignAsDelimiter":Z
    .end local v12    # "c":I
    .end local v17    # "nextTag":I
    :cond_a
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->index:I

    .line 1518
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v2}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    .line 1521
    .local v19, "parsedDate":Ljava/util/Date;
    const/4 v2, 0x0

    aget-boolean v2, v8, v2

    if-eqz v2, :cond_b

    .line 1522
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1523
    const/16 v2, 0x64

    invoke-virtual {v11, v2}, Ljava/text/CalendarBuilder;->addYear(I)Ljava/text/CalendarBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1535
    :cond_b
    return-object v19

    .line 1529
    .end local v19    # "parsedDate":Ljava/util/Date;
    :catch_0
    move-exception v14

    .line 1530
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p2

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 1531
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Ljava/text/ParsePosition;->index:I

    .line 1532
    const/4 v2, 0x0

    return-object v2

    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    .end local v15    # "i":I
    .restart local v5    # "tag":I
    .restart local v6    # "count":I
    .restart local v16    # "i":I
    :cond_c
    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_1

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "value"    # I
    .param p4, "start"    # I
    .param p5, "field"    # I
    .param p6, "pos"    # Ljava/text/ParsePosition;
    .param p7, "useDateFormatSymbols"    # Z
    .param p8, "standalone"    # Z
    .param p9, "out"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 2162
    const/4 v1, 0x2

    if-gt p2, v1, :cond_0

    .line 2167
    add-int/lit8 v1, p3, -0x1

    const/4 v2, 0x2

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2168
    iget v1, p6, Ljava/text/ParsePosition;->index:I

    return v1

    .line 2171
    :cond_0
    const/4 v7, -0x1

    .line 2172
    .local v7, "index":I
    if-eqz p7, :cond_4

    .line 2178
    if-eqz p8, :cond_1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v5

    .line 2177
    :goto_0
    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object/from16 v6, p9

    .line 2176
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_2

    .line 2180
    return v7

    .line 2178
    :cond_1
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2185
    :cond_2
    if-eqz p8, :cond_3

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v5

    .line 2184
    :goto_1
    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object/from16 v6, p9

    .line 2183
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_5

    .line 2187
    return v7

    .line 2185
    :cond_3
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 2190
    :cond_4
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 2192
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 2191
    const/4 v3, 0x0

    .line 2190
    invoke-virtual {v1, p5, v3, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move-object/from16 v6, p9

    .line 2193
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v7

    if-lez v7, :cond_5

    .line 2194
    return v7

    .line 2198
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    return v7
.end method

.method private parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "useDateFormatSymbols"    # Z
    .param p5, "standalone"    # Z
    .param p6, "out"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 2203
    const/4 v6, -0x1

    .line 2204
    .local v6, "index":I
    if-eqz p4, :cond_3

    .line 2209
    if-eqz p5, :cond_0

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v4

    .line 2208
    :goto_0
    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v5, p6

    .line 2207
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_1

    .line 2211
    return v6

    .line 2209
    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2217
    :cond_1
    if-eqz p5, :cond_2

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v4

    .line 2216
    :goto_1
    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v5, p6

    .line 2215
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_5

    .line 2219
    return v6

    .line 2217
    :cond_2
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2222
    :cond_3
    const/4 v0, 0x2

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v8

    .line 2223
    .local v8, "styles":[I
    const/4 v0, 0x0

    array-length v10, v8

    move v9, v0

    :goto_2
    if-ge v9, v10, :cond_5

    aget v7, v8, v9

    .line 2224
    .local v7, "style":I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p3, v7, v1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v4

    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p6

    .line 2225
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v6

    if-lez v6, :cond_4

    .line 2226
    return v6

    .line 2223
    :cond_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    .line 2231
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "style":I
    .end local v8    # "styles":[I
    :cond_5
    return v6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2410
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2413
    :try_start_0
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v4

    iput-object v4, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2418
    iget v4, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    if-ge v4, v5, :cond_1

    .line 2420
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    .line 2426
    :goto_0
    iput v5, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 2432
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 2433
    .local v2, "tz":Ljava/util/TimeZone;
    instance-of v4, v2, Ljava/util/SimpleTimeZone;

    if-eqz v4, :cond_0

    .line 2434
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 2435
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2436
    .local v3, "zi":Ljava/util/TimeZone;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2437
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2409
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "zi":Ljava/util/TimeZone;
    :cond_0
    return-void

    .line 2414
    .end local v2    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    .line 2415
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/InvalidObjectException;

    const-string v5, "invalid pattern"

    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2424
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v4}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    goto :goto_0
.end method

.method private subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V
    .locals 32
    .param p1, "patternCharIndex"    # I
    .param p2, "count"    # I
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z

    .prologue
    .line 1065
    const v7, 0x7fffffff

    .line 1066
    .local v7, "maxIntCount":I
    const/16 v16, 0x0

    .line 1067
    .local v16, "current":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    .line 1069
    .local v12, "beginOffset":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v19, v4, p1

    .line 1071
    .local v19, "field":I
    const/16 v4, 0x11

    move/from16 v0, v19

    if-ne v0, v4, :cond_4

    .line 1072
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getWeekYear()I

    move-result v6

    .line 1086
    .local v6, "value":I
    :goto_0
    const/4 v4, 0x4

    move/from16 v0, p2

    if-lt v0, v4, :cond_6

    const/16 v23, 0x2

    .line 1087
    .local v23, "style":I
    :goto_1
    if-nez p5, :cond_0

    const/16 v4, 0x3e8

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 1095
    .end local v16    # "current":Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1256
    :pswitch_0
    if-nez v16, :cond_1

    .line 1257
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    .line 1262
    .end local p2    # "count":I
    :cond_1
    :goto_2
    if-eqz v16, :cond_2

    .line 1263
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1266
    :cond_2
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v9, v4, p1

    .line 1267
    .local v9, "fieldID":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    aget-object v10, v4, p1

    .line 1269
    .local v10, "f":Ljava/text/DateFormat$Field;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    move-object/from16 v8, p3

    move-object v11, v10

    move-object/from16 v14, p4

    invoke-interface/range {v8 .. v14}, Ljava/text/Format$FieldDelegate;->formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V

    .line 1063
    return-void

    .line 1076
    .end local v6    # "value":I
    .end local v9    # "fieldID":I
    .end local v10    # "f":Ljava/text/DateFormat$Field;
    .end local v23    # "style":I
    .restart local v16    # "current":Ljava/lang/String;
    .restart local p2    # "count":I
    :cond_3
    const/16 p1, 0x1

    .line 1077
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v19, v4, p1

    .line 1078
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_0

    .line 1080
    .end local v6    # "value":I
    :cond_4
    const/16 v4, 0x3e8

    move/from16 v0, v19

    if-ne v0, v4, :cond_5

    .line 1081
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/text/CalendarBuilder;->toISODayOfWeek(I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_0

    .line 1083
    .end local v6    # "value":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_0

    .line 1086
    :cond_6
    const/16 v23, 0x1

    .restart local v23    # "style":I
    goto :goto_1

    .line 1097
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_1
    if-eqz p5, :cond_7

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v18

    .line 1099
    .local v18, "eras":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v4, v0

    if-ge v6, v4, :cond_7

    .line 1100
    aget-object v16, v18, v6

    .line 1102
    .end local v18    # "eras":[Ljava/lang/String;
    :cond_7
    if-nez v16, :cond_1

    .line 1103
    const-string v16, ""

    .local v16, "current":Ljava/lang/String;
    goto :goto_2

    .line 1108
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-eqz v4, :cond_9

    .line 1109
    const/4 v4, 0x2

    move/from16 v0, p2

    if-eq v0, v4, :cond_8

    .line 1110
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto :goto_2

    .line 1112
    :cond_8
    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v6, v4, v5, v1}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1114
    :cond_9
    if-nez v16, :cond_1

    .line 1115
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_a

    const/16 p2, 0x1

    .end local p2    # "count":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1124
    .restart local p2    # "count":I
    :pswitch_3
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 1123
    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    .line 1131
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_4
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 1130
    invoke-direct/range {v4 .. v10}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZ)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    .line 1136
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_5
    if-nez v16, :cond_1

    .line 1137
    if-nez v6, :cond_b

    .line 1138
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1141
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1147
    :pswitch_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-direct {v0, v1, v6, v2, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    .line 1153
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-direct {v0, v1, v6, v2, v4}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    .line 1158
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_8
    if-eqz p5, :cond_1

    .line 1159
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v15

    .line 1160
    .local v15, "ampm":[Ljava/lang/String;
    aget-object v16, v15, v6

    .restart local v16    # "current":Ljava/lang/String;
    goto/16 :goto_2

    .line 1165
    .end local v15    # "ampm":[Ljava/lang/String;
    .end local v16    # "current":Ljava/lang/String;
    :pswitch_9
    if-nez v16, :cond_1

    .line 1166
    if-nez v6, :cond_c

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1170
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v7, v2}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1175
    :pswitch_a
    if-nez v16, :cond_1

    .line 1176
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v24

    .line 1177
    .local v24, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v17, 0x1

    .line 1178
    .local v17, "daylight":Z
    :goto_3
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ge v0, v4, :cond_e

    const/16 v25, 0x0

    .line 1180
    .local v25, "tzstyle":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v4, v4, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-eqz v4, :cond_f

    .line 1182
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    .line 1181
    move/from16 v0, v17

    move/from16 v1, v25

    invoke-static {v4, v5, v0, v1}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v26

    .line 1186
    .local v26, "zoneString":Ljava/lang/String;
    :goto_5
    if-eqz v26, :cond_10

    .line 1187
    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1177
    .end local v17    # "daylight":Z
    .end local v25    # "tzstyle":I
    .end local v26    # "zoneString":Ljava/lang/String;
    :cond_d
    const/16 v17, 0x0

    .restart local v17    # "daylight":Z
    goto :goto_3

    .line 1178
    :cond_e
    const/16 v25, 0x1

    .restart local v25    # "tzstyle":I
    goto :goto_4

    .line 1184
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "zoneString":Ljava/lang/String;
    goto :goto_5

    .line 1189
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1190
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1189
    add-int v22, v4, v5

    .line 1191
    .local v22, "offsetMillis":I
    const/4 v4, 0x1

    const/4 v5, 0x1

    move/from16 v0, v22

    invoke-static {v4, v5, v0}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1198
    .end local v17    # "daylight":Z
    .end local v22    # "offsetMillis":I
    .end local v24    # "tz":Ljava/util/TimeZone;
    .end local v25    # "tzstyle":I
    .end local v26    # "zoneString":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v6, v4, v5

    .line 1199
    const/4 v4, 0x4

    move/from16 v0, p2

    if-lt v0, v4, :cond_11

    const/16 v21, 0x1

    .line 1200
    .local v21, "includeSeparator":Z
    :goto_6
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ne v0, v4, :cond_12

    const/16 v20, 0x1

    .line 1201
    .local v20, "includeGmt":Z
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v6}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1199
    .end local v20    # "includeGmt":Z
    .end local v21    # "includeSeparator":Z
    :cond_11
    const/16 v21, 0x0

    .restart local v21    # "includeSeparator":Z
    goto :goto_6

    .line 1200
    :cond_12
    const/16 v20, 0x0

    goto :goto_7

    .line 1207
    .end local v21    # "includeSeparator":Z
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1208
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1207
    add-int v6, v4, v5

    .line 1210
    if-nez v6, :cond_13

    .line 1211
    const/16 v4, 0x5a

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1215
    :cond_13
    const v4, 0xea60

    div-int/2addr v6, v4

    .line 1216
    if-ltz v6, :cond_15

    .line 1217
    const/16 v4, 0x2b

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1223
    :goto_8
    div-int/lit8 v4, v6, 0x3c

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 1224
    const/4 v4, 0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_1

    .line 1228
    const/4 v4, 0x3

    move/from16 v0, p2

    if-ne v0, v4, :cond_14

    .line 1229
    const/16 v4, 0x3a

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1231
    :cond_14
    rem-int/lit8 v4, v6, 0x3c

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1219
    :cond_15
    const/16 v4, 0x2d

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1220
    neg-int v6, v6

    goto :goto_8

    .line 1239
    :pswitch_d
    if-nez v16, :cond_1

    .line 1240
    int-to-double v4, v6

    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v4, v4, v28

    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    mul-double v4, v4, v28

    double-to-int v6, v4

    .line 1241
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    nop

    .line 1095
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_0
        :pswitch_c
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I
    .locals 42
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "patternCharIndex"    # I
    .param p4, "count"    # I
    .param p5, "obeyCount"    # Z
    .param p6, "ambiguousYear"    # [Z
    .param p7, "origPos"    # Ljava/text/ParsePosition;
    .param p8, "useFollowingMinusSignAsDelimiter"    # Z
    .param p9, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1800
    const/16 v38, 0x0

    .line 1801
    .local v38, "number":Ljava/lang/Number;
    const/4 v12, 0x0

    .line 1802
    .local v12, "value":I
    new-instance v15, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v15, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1803
    .local v15, "pos":Ljava/text/ParsePosition;
    move/from16 v0, p2

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    .line 1804
    const/16 v4, 0x13

    move/from16 v0, p3

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1808
    :cond_0
    :goto_0
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v7, v4, p3

    .line 1813
    .local v7, "field":I
    :goto_1
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 1814
    move/from16 v0, p2

    move-object/from16 v1, p7

    iput v0, v1, Ljava/text/ParsePosition;->errorIndex:I

    .line 1815
    const/4 v4, -0x1

    return v4

    .line 1806
    .end local v7    # "field":I
    :cond_1
    const/16 p3, 0x1

    goto :goto_0

    .line 1817
    .restart local v7    # "field":I
    :cond_2
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v29

    .line 1818
    .local v29, "c":C
    const/16 v4, 0x20

    move/from16 v0, v29

    if-eq v0, v4, :cond_5

    const/16 v4, 0x9

    move/from16 v0, v29

    if-eq v0, v4, :cond_5

    .line 1828
    const/4 v4, 0x4

    move/from16 v0, p3

    if-eq v0, v4, :cond_3

    .line 1829
    const/16 v4, 0xf

    move/from16 v0, p3

    if-ne v0, v4, :cond_6

    .line 1835
    :cond_3
    if-eqz p5, :cond_b

    .line 1836
    add-int v4, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_a

    .line 2154
    .end local v7    # "field":I
    .end local v38    # "number":Ljava/lang/Number;
    :cond_4
    :goto_2
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p7

    iput v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 2155
    const/4 v4, -0x1

    return v4

    .line 1819
    .restart local v7    # "field":I
    .restart local v38    # "number":Ljava/lang/Number;
    :cond_5
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto :goto_1

    .line 1830
    :cond_6
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_7

    const/4 v4, 0x2

    move/from16 v0, p4

    if-le v0, v4, :cond_3

    .line 1831
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p3

    if-eq v0, v4, :cond_3

    .line 1832
    const/16 v4, 0x13

    move/from16 v0, p3

    if-eq v0, v4, :cond_3

    .line 1861
    .end local v38    # "number":Ljava/lang/Number;
    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v16

    .line 1864
    .local v16, "useDateFormatSymbols":Z
    packed-switch p3, :pswitch_data_0

    .line 2112
    :pswitch_0
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v39

    .line 2113
    .local v39, "parseStart":I
    if-eqz p5, :cond_28

    .line 2114
    add-int v4, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 2117
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v5, p2, p4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    .line 2121
    .local v38, "number":Ljava/lang/Number;
    :goto_4
    if-eqz v38, :cond_4

    .line 2122
    const/16 v4, 0x8

    move/from16 v0, p3

    if-ne v0, v4, :cond_29

    .line 2129
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v32

    .line 2130
    .local v32, "doubleValue":D
    invoke-virtual {v15}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    sub-int v41, v4, v39

    .line 2131
    .local v41, "width":I
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    move/from16 v0, v41

    int-to-double v10, v0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    .line 2132
    .local v30, "divisor":D
    div-double v4, v32, v30

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v10

    double-to-int v12, v4

    .line 2137
    .end local v30    # "divisor":D
    .end local v32    # "doubleValue":D
    .end local v41    # "width":I
    :goto_5
    if-eqz p8, :cond_9

    if-gez v12, :cond_9

    .line 2138
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2a

    .line 2139
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-eq v4, v5, :cond_2a

    .line 2142
    :goto_6
    neg-int v12, v12

    .line 2143
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    .line 2146
    :cond_9
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2147
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 1839
    .end local v16    # "useDateFormatSymbols":Z
    .end local v39    # "parseStart":I
    .local v38, "number":Ljava/lang/Number;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v5, p2, p4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    .line 1843
    .local v38, "number":Ljava/lang/Number;
    :goto_7
    if-nez v38, :cond_c

    .line 1844
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-eqz v4, :cond_8

    goto/16 :goto_2

    .line 1841
    .local v38, "number":Ljava/lang/Number;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    .local v38, "number":Ljava/lang/Number;
    goto :goto_7

    .line 1848
    :cond_c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1850
    if-eqz p8, :cond_8

    if-gez v12, :cond_8

    .line 1851
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 1852
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-eq v4, v5, :cond_d

    .line 1855
    :goto_8
    neg-int v12, v12

    .line 1856
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_3

    .line 1853
    :cond_d
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 1854
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v5, :cond_8

    goto :goto_8

    .line 1866
    .end local v38    # "number":Ljava/lang/Number;
    .restart local v16    # "useDateFormatSymbols":Z
    :pswitch_1
    if-eqz v16, :cond_e

    .line 1867
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    .end local v7    # "field":I
    move-result v37

    .local v37, "index":I
    if-lez v37, :cond_4

    .line 1868
    return v37

    .line 1871
    .end local v37    # "index":I
    .restart local v7    # "field":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 1873
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 1872
    const/4 v6, 0x0

    .line 1871
    invoke-virtual {v4, v7, v6, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    .line 1874
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_4

    .line 1875
    return v37

    .line 1882
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v4, v4, Ljava/util/GregorianCalendar;

    if-nez v4, :cond_11

    .line 1885
    const/4 v4, 0x4

    move/from16 v0, p4

    if-lt v0, v4, :cond_f

    const/16 v40, 0x2

    .line 1886
    .local v40, "style":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    move/from16 v0, v40

    invoke-virtual {v4, v7, v0, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .line 1887
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v8, :cond_10

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    .line 1888
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_10

    .line 1889
    return v37

    .line 1885
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    .end local v40    # "style":I
    :cond_f
    const/16 v40, 0x1

    .restart local v40    # "style":I
    goto :goto_9

    .line 1892
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_10
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1893
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 1902
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v40    # "style":I
    :cond_11
    const/4 v4, 0x2

    move/from16 v0, p4

    if-gt v0, v4, :cond_12

    iget v4, v15, Ljava/text/ParsePosition;->index:I

    sub-int v4, v4, p2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 1903
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    .line 1902
    if-eqz v4, :cond_12

    .line 1904
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    .line 1902
    if-eqz v4, :cond_12

    .line 1913
    move-object/from16 v0, p0

    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    rem-int/lit8 v28, v4, 0x64

    .line 1914
    .local v28, "ambiguousTwoDigitYear":I
    move/from16 v0, v28

    if-ne v12, v0, :cond_13

    const/4 v4, 0x1

    :goto_a
    const/4 v5, 0x0

    aput-boolean v4, p6, v5

    .line 1915
    move-object/from16 v0, p0

    iget v4, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v5, v4, 0x64

    .line 1916
    move/from16 v0, v28

    if-ge v12, v0, :cond_14

    const/16 v4, 0x64

    .line 1915
    :goto_b
    add-int/2addr v4, v5

    add-int/2addr v12, v4

    .line 1918
    .end local v28    # "ambiguousTwoDigitYear":I
    :cond_12
    move-object/from16 v0, p9

    invoke-virtual {v0, v7, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1919
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 1914
    .restart local v28    # "ambiguousTwoDigitYear":I
    :cond_13
    const/4 v4, 0x0

    goto :goto_a

    .line 1916
    :cond_14
    const/4 v4, 0x0

    goto :goto_b

    .line 1924
    .end local v28    # "ambiguousTwoDigitYear":I
    :pswitch_3
    const/16 v17, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v13, p2

    move v14, v7

    move-object/from16 v18, p9

    .line 1923
    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 1925
    .local v36, "idx":I
    if-lez v36, :cond_4

    .line 1926
    return v36

    .line 1934
    .end local v36    # "idx":I
    :pswitch_4
    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v13, p2

    move v14, v7

    move-object/from16 v18, p9

    .line 1933
    invoke-direct/range {v9 .. v18}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 1935
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    .line 1936
    return v36

    .line 1943
    .end local v36    # "idx":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1945
    const/4 v4, 0x1

    if-lt v12, v4, :cond_4

    const/16 v4, 0x18

    if-gt v12, v4, :cond_4

    .line 1950
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v12, v4, :cond_16

    .line 1951
    const/4 v12, 0x0

    .line 1952
    :cond_16
    const/16 v4, 0xb

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1953
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 1958
    :pswitch_6
    const/16 v22, 0x1

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, v7

    move/from16 v21, v16

    move-object/from16 v23, p9

    .line 1957
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 1959
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    .line 1960
    return v36

    .line 1969
    .end local v36    # "idx":I
    :pswitch_7
    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, v7

    move/from16 v21, v16

    move-object/from16 v23, p9

    .line 1968
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v36

    .line 1970
    .restart local v36    # "idx":I
    if-lez v36, :cond_4

    .line 1971
    return v36

    .line 1979
    .end local v36    # "idx":I
    :pswitch_8
    if-eqz v16, :cond_17

    .line 1981
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v21

    .line 1980
    const/16 v20, 0x9

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move-object/from16 v22, p9

    invoke-direct/range {v17 .. v22}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_4

    .line 1982
    return v37

    .line 1985
    .end local v37    # "index":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v6, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p9

    .line 1986
    invoke-direct/range {v4 .. v9}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v37

    .restart local v37    # "index":I
    if-lez v37, :cond_4

    .line 1987
    return v37

    .line 1993
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v37    # "index":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v4

    if-nez v4, :cond_18

    .line 1995
    const/4 v4, 0x1

    if-lt v12, v4, :cond_4

    const/16 v4, 0xc

    if-gt v12, v4, :cond_4

    .line 2000
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v12, v4, :cond_19

    .line 2001
    const/4 v12, 0x0

    .line 2002
    :cond_19
    const/16 v4, 0xa

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v12}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2003
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2008
    :pswitch_a
    const/16 v20, 0x0

    .line 2010
    .local v20, "sign":I
    :try_start_0
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v29

    .line 2011
    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_1b

    .line 2012
    const/16 v20, 0x1

    move/from16 v24, v20

    .line 2016
    .end local v20    # "sign":I
    .local v24, "sign":I
    :goto_c
    if-nez v24, :cond_21

    .line 2018
    const/16 v4, 0x47

    move/from16 v0, v29

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x67

    move/from16 v0, v29

    if-ne v0, v4, :cond_1f

    .line 2019
    :cond_1a
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v4, p2

    const-string v5, "GMT"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_1f

    .line 2020
    const-string v20, "GMT"

    const-string v4, "GMT"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v18, 0x1

    const/16 v21, 0x0

    move-object/from16 v17, p1

    move/from16 v19, p2

    invoke-virtual/range {v17 .. v22}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    .line 2018
    if-eqz v4, :cond_1f

    .line 2021
    const-string v4, "GMT"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, p2

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    .line 2023
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_2b

    .line 2024
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v29

    .line 2025
    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_1c

    .line 2026
    const/16 v20, 0x1

    .line 2032
    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    :goto_d
    if-nez v20, :cond_1d

    .line 2033
    const/16 v4, 0xf

    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    .line 2034
    const/16 v5, 0x10

    const/4 v6, 0x0

    .line 2033
    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2035
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2013
    :cond_1b
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_2c

    .line 2014
    const/16 v20, -0x1

    move/from16 v24, v20

    .end local v20    # "sign":I
    .restart local v24    # "sign":I
    goto :goto_c

    .line 2027
    :cond_1c
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_2b

    .line 2028
    const/16 v20, -0x1

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto :goto_d

    .line 2039
    :cond_1d
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    const/16 v21, 0x0

    .line 2040
    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v23, p9

    .line 2039
    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v35

    .line 2041
    .local v35, "i":I
    if-lez v35, :cond_1e

    .line 2042
    return v35

    .line 2044
    :cond_1e
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 2063
    .end local v35    # "i":I
    :catch_0
    move-exception v34

    .local v34, "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_2

    .line 2048
    .end local v20    # "sign":I
    .end local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v24    # "sign":I
    :cond_1f
    :try_start_3
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v4, v2}, Ljava/text/SimpleDateFormat;->subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v35

    .line 2049
    .restart local v35    # "i":I
    if-lez v35, :cond_20

    .line 2050
    return v35

    .line 2052
    :cond_20
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_2

    .line 2056
    .end local v20    # "sign":I
    .end local v35    # "i":I
    .restart local v24    # "sign":I
    :cond_21
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v23, v4, 0x1

    move/from16 v0, v23

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    const/16 v25, 0x0

    .line 2057
    const/16 v26, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v27, p9

    .line 2056
    invoke-direct/range {v21 .. v27}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v35

    .line 2058
    .restart local v35    # "i":I
    if-lez v35, :cond_22

    .line 2059
    return v35

    .line 2061
    :cond_22
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_2

    .line 2070
    .end local v20    # "sign":I
    .end local v35    # "i":I
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v15, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_4

    .line 2074
    const/16 v20, 0x0

    .line 2075
    .restart local v20    # "sign":I
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v29

    .line 2076
    const/16 v4, 0x5a

    move/from16 v0, v29

    if-ne v0, v4, :cond_23

    .line 2077
    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2078
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2082
    :cond_23
    const/16 v4, 0x2b

    move/from16 v0, v29

    if-ne v0, v4, :cond_24

    .line 2083
    const/16 v20, 0x1

    .line 2090
    :goto_e
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    iput v0, v15, Ljava/text/ParsePosition;->index:I

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_26

    const/16 v22, 0x1

    :goto_f
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v21, p4

    move-object/from16 v23, p9

    invoke-direct/range {v17 .. v23}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v35

    .line 2091
    .restart local v35    # "i":I
    if-lez v35, :cond_27

    .line 2092
    return v35

    .line 2084
    .end local v35    # "i":I
    :cond_24
    const/16 v4, 0x2d

    move/from16 v0, v29

    if-ne v0, v4, :cond_25

    .line 2085
    const/16 v20, -0x1

    goto :goto_e

    .line 2087
    :cond_25
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_2

    .line 2090
    :cond_26
    const/16 v22, 0x0

    goto :goto_f

    .line 2094
    .restart local v35    # "i":I
    :cond_27
    move/from16 v0, v35

    neg-int v4, v0

    iput v4, v15, Ljava/text/ParsePosition;->index:I

    goto/16 :goto_2

    .line 2119
    .end local v20    # "sign":I
    .end local v35    # "i":I
    .restart local v39    # "parseStart":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v38

    .restart local v38    # "number":Ljava/lang/Number;
    goto/16 :goto_4

    .line 2134
    :cond_29
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    move-result v12

    goto/16 :goto_5

    .line 2140
    :cond_2a
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 2141
    iget v4, v15, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v5, :cond_9

    goto/16 :goto_6

    .line 2063
    .end local v38    # "number":Ljava/lang/Number;
    .end local v39    # "parseStart":I
    .restart local v24    # "sign":I
    :catch_1
    move-exception v34

    .restart local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_2

    .end local v20    # "sign":I
    .end local v34    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v24    # "sign":I
    :cond_2b
    move/from16 v20, v24

    .end local v24    # "sign":I
    .restart local v20    # "sign":I
    goto/16 :goto_d

    :cond_2c
    move/from16 v24, v20

    .end local v20    # "sign":I
    .restart local v24    # "sign":I
    goto/16 :goto_c

    .line 1864
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "sign"    # I
    .param p4, "count"    # I
    .param p5, "colonRequired"    # Z
    .param p6, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1724
    move v3, p2

    .line 1728
    .local v3, "index":I
    add-int/lit8 v3, p2, 0x1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1731
    .local v0, "c":C
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 1772
    .end local v0    # "c":C
    :cond_0
    :goto_0
    rsub-int/lit8 v6, v3, 0x1

    return v6

    .line 1734
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v0, -0x30

    .line 1735
    .local v2, "hours":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1736
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_2

    .line 1737
    mul-int/lit8 v6, v2, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v2, v6, v7

    .line 1741
    :goto_1
    const/16 v6, 0x17

    if-le v2, v6, :cond_3

    move v3, v4

    .line 1742
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 1739
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_2
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .line 1744
    :cond_3
    const/4 v5, 0x0

    .line 1745
    .local v5, "minutes":I
    const/4 v6, 0x1

    if-eq p4, v6, :cond_6

    .line 1747
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    :try_start_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 1748
    const/16 v6, 0x3a

    if-ne v0, v6, :cond_4

    .line 1749
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :try_start_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1753
    :goto_2
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    if-nez v6, :cond_5

    move v3, v4

    .line 1754
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 1750
    :cond_4
    if-nez p5, :cond_0

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    .line 1756
    :cond_5
    add-int/lit8 v5, v0, -0x30

    .line 1757
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    :try_start_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1758
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1761
    mul-int/lit8 v6, v5, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v5, v6, v7

    .line 1762
    const/16 v6, 0x3b

    if-gt v5, v6, :cond_0

    .line 1766
    :goto_3
    mul-int/lit8 v6, v2, 0x3c

    add-int/2addr v5, v6

    .line 1767
    const v6, 0xea60

    mul-int/2addr v6, v5

    mul-int/2addr v6, p3

    const/16 v7, 0xf

    invoke-virtual {p6, v7, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v6

    .line 1768
    const/16 v7, 0x10

    const/4 v8, 0x0

    .line 1767
    invoke-virtual {v6, v7, v8}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1769
    return v3

    .line 1770
    .end local v0    # "c":C
    .end local v2    # "hours":I
    .end local v5    # "minutes":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "index":I
    .restart local v0    # "c":C
    .restart local v2    # "hours":I
    .restart local v4    # "index":I
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "index":I
    .restart local v4    # "index":I
    .restart local v5    # "minutes":I
    :cond_6
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_3
.end method

.method private subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .prologue
    .line 1644
    const/4 v6, 0x0

    .line 1645
    .local v6, "useSameName":Z
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1650
    .local v0, "currentTimeZone":Ljava/util/TimeZone;
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v7

    .line 1651
    .local v7, "zoneIndex":I
    const/4 v5, 0x0

    .line 1652
    .local v5, "tz":Ljava/util/TimeZone;
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v9

    .line 1653
    .local v9, "zoneStrings":[[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1654
    .local v8, "zoneNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1655
    .local v4, "nameIndex":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    .line 1656
    aget-object v8, v9, v7

    .line 1657
    .local v8, "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 1658
    const/4 v10, 0x2

    if-gt v4, v10, :cond_0

    .line 1660
    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1662
    .end local v6    # "useSameName":Z
    :cond_0
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1665
    .end local v5    # "tz":Ljava/util/TimeZone;
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_3

    .line 1666
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v7

    .line 1667
    const/4 v10, -0x1

    if-eq v7, v10, :cond_3

    .line 1668
    aget-object v8, v9, v7

    .line 1669
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 1670
    const/4 v10, 0x2

    if-gt v4, v10, :cond_2

    .line 1671
    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1673
    :cond_2
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1678
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_5

    .line 1679
    array-length v3, v9

    .line 1680
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 1681
    aget-object v8, v9, v2

    .line 1682
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, v8}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    .line 1683
    const/4 v10, 0x2

    if-gt v4, v10, :cond_4

    .line 1684
    aget-object v10, v8, v4

    add-int/lit8 v11, v4, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1686
    :cond_4
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1691
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_c

    .line 1692
    invoke-virtual {v5, v0}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1693
    invoke-virtual {p0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1701
    :cond_6
    const/4 v10, 0x3

    if-lt v4, v10, :cond_a

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    .line 1702
    .local v1, "dstAmount":I
    :goto_1
    if-nez v6, :cond_7

    const/4 v10, 0x3

    if-lt v4, v10, :cond_b

    if-nez v1, :cond_b

    :cond_7
    const/4 v10, 0x1

    :goto_2
    if-nez v10, :cond_8

    .line 1703
    const/16 v10, 0xf

    invoke-virtual {p3, v10}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    move-result-object v10

    const/16 v11, 0x10

    invoke-virtual {v10, v11, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1705
    :cond_8
    aget-object v10, v8, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, p2

    return v10

    .line 1680
    .end local v1    # "dstAmount":I
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v8    # "zoneNames":[Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1701
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v8    # "zoneNames":[Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "dstAmount":I
    goto :goto_1

    .line 1702
    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    .line 1707
    .end local v1    # "dstAmount":I
    :cond_c
    const/4 v10, 0x0

    return v10
.end method

.method private translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x27

    .line 2257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2258
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2259
    .local v3, "inQuote":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 2260
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2261
    .local v0, "c":C
    if-eqz v3, :cond_1

    .line 2262
    if-ne v0, v6, :cond_0

    .line 2263
    const/4 v3, 0x0

    .line 2284
    :cond_0
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2266
    :cond_1
    if-ne v0, v6, :cond_2

    .line 2267
    const/4 v3, 0x1

    goto :goto_1

    .line 2268
    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_3

    .line 2269
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2270
    .local v1, "ci":I
    if-ltz v1, :cond_4

    .line 2274
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 2275
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 2268
    .end local v1    # "ci":I
    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_0

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_0

    goto :goto_2

    .line 2278
    .restart local v1    # "ci":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal pattern  character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2280
    const-string v7, "\'"

    .line 2278
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2286
    .end local v0    # "c":C
    .end local v1    # "ci":I
    :cond_5
    if-eqz v3, :cond_6

    .line 2287
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unfinished quote in pattern"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2288
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private useDateFormatSymbols()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2240
    iget-boolean v1, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    if-eqz v1, :cond_0

    .line 2241
    return v0

    .line 2243
    :cond_0
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->isGregorianCalendar()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "minDigits"    # I
    .param p3, "maxDigits"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, 0x2

    .line 1333
    :try_start_0
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    if-nez v1, :cond_0

    .line 1334
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v1, Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    iput-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    .line 1336
    :cond_0
    if-ltz p1, :cond_3

    .line 1337
    const/16 v1, 0x64

    if-ge p1, v1, :cond_4

    const/4 v1, 0x1

    if-lt p2, v1, :cond_4

    if-gt p2, v2, :cond_4

    .line 1338
    const/16 v1, 0xa

    if-ge p1, v1, :cond_2

    .line 1339
    if-ne p2, v2, :cond_1

    .line 1340
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1342
    :cond_1
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    add-int/2addr v1, p1

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1347
    :goto_0
    return-void

    .line 1344
    :cond_2
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1345
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1364
    :catch_0
    move-exception v0

    .line 1367
    :cond_3
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1368
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1369
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v2, p1

    sget-object v4, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {v1, v2, v3, p4, v4}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1326
    return-void

    .line 1348
    :cond_4
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_3

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_3

    .line 1349
    const/4 v1, 0x4

    if-ne p2, v1, :cond_5

    .line 1350
    :try_start_1
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit16 v2, p1, 0x3e8

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1351
    rem-int/lit16 p1, p1, 0x3e8

    .line 1352
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0x64

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1353
    rem-int/lit8 p1, p1, 0x64

    .line 1354
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1355
    iget-char v1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1356
    return-void

    .line 1358
    :cond_5
    if-ne p2, v2, :cond_3

    if-ne p3, v2, :cond_3

    .line 1359
    rem-int/lit8 v1, p1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1360
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2334
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v1

    .line 2335
    const-string v2, "GyMdkHmsSEDFwWahKzZYuXLc"

    .line 2333
    invoke-direct {p0, p1, v1, v2}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2336
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2337
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2332
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2320
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2321
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2318
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2371
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2372
    .local v0, "other":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2373
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2396
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 2397
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2398
    .local v0, "that":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2399
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1, v2}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2398
    :cond_1
    return v1
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v0, 0x0

    .line 928
    iput v0, p3, Ljava/text/FieldPosition;->endIndex:I

    iput v0, p3, Ljava/text/FieldPosition;->beginIndex:I

    .line 929
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldDelegate()Ljava/text/Format$FieldDelegate;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 984
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 985
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/text/CharacterIteratorFieldDelegate;

    invoke-direct {v0}, Ljava/text/CharacterIteratorFieldDelegate;-><init>()V

    .line 988
    .local v0, "delegate":Ljava/text/CharacterIteratorFieldDelegate;
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 989
    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    .line 1002
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/CharacterIteratorFieldDelegate;->getIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 991
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 992
    new-instance v2, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v2, v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 994
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    .line 995
    new-instance v2, Ljava/lang/NullPointerException;

    .line 996
    const-string v3, "formatToCharacterIterator must be passed non-null object"

    .line 995
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 999
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1000
    const-string v3, "Cannot format given Object as a Date"

    .line 999
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .locals 1

    .prologue
    .line 2348
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2383
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 1411
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1413
    .local v0, "tz":Ljava/util/TimeZone;
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;->parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1415
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1413
    return-object v1

    .line 1414
    :catchall_0
    move-exception v1

    .line 1415
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1414
    throw v1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 4
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 898
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 897
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "newFormatSymbols"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 2360
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2361
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 2358
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2306
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2307
    const-string v1, "GyMdkHmsSEDFwWahKzZYuXLc"

    .line 2308
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    .line 2306
    invoke-direct {p0, v0, v1, v2}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2297
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
