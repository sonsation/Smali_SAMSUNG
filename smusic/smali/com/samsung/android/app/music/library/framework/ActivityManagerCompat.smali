.class public Lcom/samsung/android/app/music/library/framework/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# static fields
.field private static final FORCE_STOP_PKG_ENABLED:Z

.field private static final sForceStopMethod:Ljava/lang/reflect/Method;

.field private static final sSetCustomImageMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/ActivityManagerCompat;->findForceStopMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/library/framework/ActivityManagerCompat;->sForceStopMethod:Ljava/lang/reflect/Method;

    .line 24
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/ActivityManagerCompat;->findSetCustomImageMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/library/framework/ActivityManagerCompat;->sSetCustomImageMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findForceStopMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findSetCustomImageMethod()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 41
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    .line 42
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/app/ActivityManager;>;"
    const-string/jumbo v2, "setCustomImageForPackage"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ComponentName;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/io/FileDescriptor;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    :goto_0
    return-object v2

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 47
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "am"    # Landroid/app/ActivityManager;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    return-void
.end method

.method public static setCustomImageForPackage(Landroid/app/ActivityManager;Landroid/content/ComponentName;ILjava/io/FileDescriptor;I)Z
    .locals 6
    .param p0, "am"    # Landroid/app/ActivityManager;
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "taskUserId"    # I
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "rotation"    # I

    .prologue
    const/4 v2, 0x0

    .line 101
    sget-object v1, Lcom/samsung/android/app/music/library/framework/ActivityManagerCompat;->sSetCustomImageMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move v1, v2

    .line 109
    :goto_0
    return v1

    .line 105
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/library/framework/ActivityManagerCompat;->sSetCustomImageMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    move v1, v2

    .line 109
    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
