.class public final Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# static fields
.field private static final UNDEFINED:I = -0x1

.field private static final sGetCurrentUser:Ljava/lang/reflect/Method;

.field private static final sSetCustomImageMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->findGetCurrentUser()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->sGetCurrentUser:Ljava/lang/reflect/Method;

    .line 20
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->findSetCustomImageMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->sSetCustomImageMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findGetCurrentUser()Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 48
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    .line 49
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/app/ActivityManager;>;"
    const-string v2, "getCurrentUser"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 53
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 53
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static findSetCustomImageMethod()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 58
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    .line 59
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

    .line 64
    :goto_0
    return-object v2

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 64
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCurrentUser()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 35
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->sGetCurrentUser:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move v1, v2

    .line 43
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return v1

    .line 39
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->sGetCurrentUser:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    move v1, v2

    .line 43
    goto :goto_0

    .line 40
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static isInLockTaskMode(Landroid/app/ActivityManager;)Z
    .locals 3
    .param p0, "am"    # Landroid/app/ActivityManager;

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 27
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 28
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    goto :goto_0
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

    .line 85
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->sSetCustomImageMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move v1, v2

    .line 93
    :goto_0
    return v1

    .line 89
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->sSetCustomImageMethod:Ljava/lang/reflect/Method;

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

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    move v1, v2

    .line 93
    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
