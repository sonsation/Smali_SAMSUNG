.class public Ljava/text/DateFormat$Field;
.super Ljava/text/Format$Field;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final AM_PM:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_MONTH:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_WEEK:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_YEAR:Ljava/text/DateFormat$Field;

.field public static final ERA:Ljava/text/DateFormat$Field;

.field public static final HOUR0:Ljava/text/DateFormat$Field;

.field public static final HOUR1:Ljava/text/DateFormat$Field;

.field public static final HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

.field public static final HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

.field public static final MILLISECOND:Ljava/text/DateFormat$Field;

.field public static final MINUTE:Ljava/text/DateFormat$Field;

.field public static final MONTH:Ljava/text/DateFormat$Field;

.field public static final SECOND:Ljava/text/DateFormat$Field;

.field public static final TIME_ZONE:Ljava/text/DateFormat$Field;

.field public static final WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

.field public static final WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

.field public static final YEAR:Ljava/text/DateFormat$Field;

.field private static final calendarToFieldMapping:[Ljava/text/DateFormat$Field;

.field private static final instanceMap:Ljava/util/Map;

.field private static final serialVersionUID:J = 0x6744fc81f123e710L


# instance fields
.field private calendarField:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 812
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    .line 816
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/text/DateFormat$Field;

    .line 815
    sput-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    .line 905
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "era"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 910
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "year"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 915
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "month"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 920
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 921
    const-string v1, "day of month"

    const/4 v2, 0x5

    .line 920
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 927
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour of day 1"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 933
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 934
    const-string v1, "hour of day"

    const/16 v2, 0xb

    .line 933
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 939
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "minute"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 944
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "second"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 949
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 950
    const-string v1, "millisecond"

    const/16 v2, 0xe

    .line 949
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 955
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 956
    const-string v1, "day of week"

    const/4 v2, 0x7

    .line 955
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 961
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 962
    const-string v1, "day of year"

    const/4 v2, 0x6

    .line 961
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 968
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of week in month"

    .line 969
    const/16 v2, 0x8

    .line 968
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    .line 967
    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 974
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 975
    const-string v1, "week of year"

    const/4 v2, 0x3

    .line 974
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 980
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 981
    const-string v1, "week of month"

    const/4 v2, 0x4

    .line 980
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 987
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 988
    const-string v1, "am pm"

    const/16 v2, 0x9

    .line 987
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 994
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour 1"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 1000
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 1001
    const-string v1, "hour"

    const/16 v2, 0xa

    .line 1000
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 1006
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "time zone"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 806
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "calendarField"    # I

    .prologue
    .line 853
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 854
    iput p2, p0, Ljava/text/DateFormat$Field;->calendarField:I

    .line 855
    invoke-virtual {p0}, Ljava/text/DateFormat$Field;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/DateFormat$Field;

    if-ne v0, v1, :cond_0

    .line 856
    sget-object v0, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    if-ltz p2, :cond_0

    .line 859
    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    aput-object p0, v0, p2

    .line 852
    :cond_0
    return-void
.end method

.method public static ofCalendarField(I)Ljava/text/DateFormat$Field;
    .locals 3
    .param p0, "calendarField"    # I

    .prologue
    .line 834
    if-ltz p0, :cond_0

    .line 835
    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    array-length v0, v0

    .line 834
    if-lt p0, v0, :cond_1

    .line 836
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Calendar constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_1
    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public getCalendarField()I
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Ljava/text/DateFormat$Field;->calendarField:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-virtual {p0}, Ljava/text/DateFormat$Field;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/text/DateFormat$Field;

    if-eq v1, v2, :cond_0

    .line 887
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "subclass didn\'t correctly implement readResolve"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 890
    :cond_0
    sget-object v1, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/text/DateFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 891
    .local v0, "instance":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 892
    return-object v0

    .line 894
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "unknown attribute name"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method