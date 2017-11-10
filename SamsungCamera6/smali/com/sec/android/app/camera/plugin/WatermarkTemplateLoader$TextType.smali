.class final enum Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;
.super Ljava/lang/Enum;
.source "WatermarkTemplateLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum CHN_DATE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum CHN_TEMPERATURE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum CITY_NAME:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum CURRENT_DATE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum CURRENT_DAY:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum CURRENT_DAY_AND_TIME:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum CURRENT_YEAR:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum DATE_FORMAT_01:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum DATE_FORMAT_02:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum DATE_FORMAT_03:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum DATE_FOR_FESTIVAL:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum DAY_OF_WEEK:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum GPS_INFO:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum HOLIDAY:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum LOCATION_STRING:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum LOCATION_STRING_01:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum LOCATION_STRING_02:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum LUNAR_YEAR:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum NONE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum PM25:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public static final enum SOLAR_TERM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->NONE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "CURRENT_YEAR"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CURRENT_YEAR:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "CURRENT_DAY"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CURRENT_DAY:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "CURRENT_DAY_AND_TIME"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CURRENT_DAY_AND_TIME:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "CURRENT_DATE"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CURRENT_DATE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "DATE_FORMAT_01"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DATE_FORMAT_01:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "DATE_FORMAT_02"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DATE_FORMAT_02:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "DATE_FORMAT_03"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DATE_FORMAT_03:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "HOLIDAY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->HOLIDAY:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "SOLAR_TERM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->SOLAR_TERM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "LUNAR_YEAR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LUNAR_YEAR:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "DAY_OF_WEEK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DAY_OF_WEEK:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "LOCATION_STRING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LOCATION_STRING:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "LOCATION_STRING_01"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LOCATION_STRING_01:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "LOCATION_STRING_02"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LOCATION_STRING_02:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "GPS_INFO"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->GPS_INFO:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "PM25"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->PM25:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "CHN_DATE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CHN_DATE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "DATE_FOR_FESTIVAL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DATE_FOR_FESTIVAL:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "CHN_TEMPERATURE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CHN_TEMPERATURE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    new-instance v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const-string v1, "CITY_NAME"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CITY_NAME:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->NONE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CURRENT_YEAR:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CURRENT_DAY:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CURRENT_DAY_AND_TIME:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CURRENT_DATE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DATE_FORMAT_01:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DATE_FORMAT_02:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DATE_FORMAT_03:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->HOLIDAY:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->SOLAR_TERM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LUNAR_YEAR:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DAY_OF_WEEK:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LOCATION_STRING:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LOCATION_STRING_01:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LOCATION_STRING_02:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->GPS_INFO:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->PM25:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CHN_DATE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DATE_FOR_FESTIVAL:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CHN_TEMPERATURE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CITY_NAME:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->$VALUES:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->$VALUES:[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    return-object v0
.end method
