.class public Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;
.super Ljava/lang/Object;
.source "SVirtualScreenManagerReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchParams"
.end annotation


# static fields
.field static FIELD_NAMES:[Ljava/lang/String;

.field public static FLAG_BASE_ACTIVITY:I

.field public static FLAG_CLEAR_TASKS:I

.field public static FLAG_FOCUS_POLICY:I

.field public static FLAG_LAYOUT_POLICY:I

.field public static FLAG_NO_ANIMATION:I

.field public static FLAG_RECREATE_VIRTUALSCREEN:I

.field public static FLAG_REUSE_TASK_POLICY:I

.field public static FLAG_ZEROPAGE_POLICY:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 67
    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "FLAG_BASE_ACTIVITY"

    aput-object v8, v6, v7

    const-string v7, "FLAG_CLEAR_TASKS"

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string v8, "FLAG_NO_ANIMATION"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "FLAG_RECREATE_VIRTUALSCREEN"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "FLAG_LAYOUT_POLICY"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "FLAG_FOCUS_POLICY"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "FLAG_ZEROPAGE_POLICY"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "FLAG_REUSE_TASK_POLICY"

    aput-object v8, v6, v7

    sput-object v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    .line 79
    sget-object v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v6

    .line 80
    .local v0, "N":I
    const/4 v4, 0x0

    .line 82
    .local v4, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->access$000()I

    move-result v6

    if-ge v6, v9, :cond_0

    .line 83
    const-string v6, "com.samsung.android.multidisplay.virtualscreen.VirtualScreenLaunchParams"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 91
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 93
    :try_start_1
    sget-object v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 94
    .local v5, "src":Ljava/lang/reflect/Field;
    const-class v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;

    sget-object v7, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 95
    .local v1, "dst":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    .end local v1    # "dst":Ljava/lang/reflect/Field;
    .end local v5    # "src":Ljava/lang/reflect/Field;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 85
    .end local v3    # "i":I
    :cond_0
    :try_start_2
    const-string v6, "com.samsung.android.multiscreen.MultiScreenLaunchParams"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    goto :goto_0

    .line 96
    .restart local v3    # "i":I
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2

    .line 98
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 100
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 104
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    return-void

    .line 87
    .end local v3    # "i":I
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
