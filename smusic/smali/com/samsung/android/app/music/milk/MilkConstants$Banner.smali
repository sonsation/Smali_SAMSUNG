.class public final enum Lcom/samsung/android/app/music/milk/MilkConstants$Banner;
.super Ljava/lang/Enum;
.source "MilkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Banner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/MilkConstants$Banner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

.field public static final enum ADD_ARTISTS_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

.field public static final enum ADD_FAVORITE_STATION_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

.field public static final enum CREATE_PERSONAL_STATION_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

.field public static final enum CUSTOMIZE_DIAL_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

.field public static final enum CUSTOMIZE_STATION_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

.field public static final enum EVERYTIME_LAUNCH_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

.field public static final enum EVERY_30MIN_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

.field public static final enum SHOW_DIAL_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    const-string v1, "CUSTOMIZE_STATION_TIP"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->CUSTOMIZE_STATION_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    const-string v1, "CUSTOMIZE_DIAL_TIP"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->CUSTOMIZE_DIAL_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    .line 39
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    const-string v1, "SHOW_DIAL_TIP"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->SHOW_DIAL_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    const-string v1, "ADD_ARTISTS_TIP"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->ADD_ARTISTS_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    .line 45
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    const-string v1, "EVERYTIME_LAUNCH_SIGNIN_TIP"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->EVERYTIME_LAUNCH_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    .line 46
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    const-string v1, "CREATE_PERSONAL_STATION_SIGNIN_TIP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->CREATE_PERSONAL_STATION_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    const-string v1, "ADD_FAVORITE_STATION_SIGNIN_TIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->ADD_FAVORITE_STATION_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    const-string v1, "EVERY_30MIN_SIGNIN_TIP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->EVERY_30MIN_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->CUSTOMIZE_STATION_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->CUSTOMIZE_DIAL_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->SHOW_DIAL_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->ADD_ARTISTS_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->EVERYTIME_LAUNCH_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->CREATE_PERSONAL_STATION_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->ADD_FAVORITE_STATION_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->EVERY_30MIN_SIGNIN_TIP:Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/MilkConstants$Banner;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/MilkConstants$Banner;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/MilkConstants$Banner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/MilkConstants$Banner;

    return-object v0
.end method
