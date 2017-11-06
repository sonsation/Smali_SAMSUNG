.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;
.super Ljava/lang/Object;
.source "SMultiWindowReflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiWindowStyle"
.end annotation


# static fields
.field static FIELD_NAMES:[Ljava/lang/String;

.field public static NOTIFY_STATE_HIDDEN:I

.field public static NOTIFY_STATE_SHOWN:I

.field public static OPTION_SCALE:I

.field public static TYPE_CASCADE:I

.field public static TYPE_NORMAL:I

.field public static TYPE_SPLIT:I

.field public static ZONE_A:I

.field public static ZONE_B:I

.field public static ZONE_C:I

.field public static ZONE_D:I

.field public static ZONE_E:I

.field public static ZONE_F:I

.field public static ZONE_FULL:I

.field public static ZONE_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 215
    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "TYPE_NORMAL"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "TYPE_SPLIT"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "TYPE_CASCADE"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "ZONE_UNKNOWN"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "ZONE_A"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "ZONE_B"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "ZONE_C"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "ZONE_D"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "ZONE_E"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "ZONE_F"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "ZONE_FULL"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "OPTION_SCALE"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "NOTIFY_STATE_HIDDEN"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "NOTIFY_STATE_SHOWN"

    aput-object v7, v5, v6

    sput-object v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    .line 233
    sget-object v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v5

    .line 235
    .local v0, "N":I
    :try_start_0
    const-string v5, "com.samsung.android.multiwindow.MultiWindowStyle"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 236
    .local v3, "mwClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_0

    .line 237
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 238
    const-class v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    sget-object v6, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 240
    .local v4, "src":Ljava/lang/reflect/Field;
    const-class v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;

    sget-object v6, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 241
    .local v1, "dst":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v1, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "dst":Ljava/lang/reflect/Field;
    .end local v2    # "i":I
    .end local v3    # "mwClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "src":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    .line 249
    :cond_0
    :goto_1
    return-void

    .line 246
    :catch_1
    move-exception v5

    goto :goto_1

    .line 245
    :catch_2
    move-exception v5

    goto :goto_1

    .line 244
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
