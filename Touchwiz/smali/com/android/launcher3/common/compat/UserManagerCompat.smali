.class public abstract Lcom/android/launcher3/common/compat/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# static fields
.field private static sInstance:Lcom/android/launcher3/common/compat/UserManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/compat/UserManagerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v1, Lcom/android/launcher3/common/compat/UserManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/common/compat/UserManagerCompat;

    if-nez v0, :cond_0

    .line 37
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_N:Z

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/android/launcher3/common/compat/UserManagerCompatVN;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/common/compat/UserManagerCompatVN;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/common/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/common/compat/UserManagerCompat;

    .line 47
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher3/common/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/common/compat/UserManagerCompat;

    monitor-exit v1

    return-object v0

    .line 39
    :cond_1
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/common/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/common/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/common/compat/UserManagerCompat;

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 41
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v0, :cond_3

    .line 42
    new-instance v0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/common/compat/UserManagerCompatV17;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/common/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/common/compat/UserManagerCompat;

    goto :goto_0

    .line 44
    :cond_3
    new-instance v0, Lcom/android/launcher3/common/compat/UserManagerCompatV16;

    invoke-direct {v0}, Lcom/android/launcher3/common/compat/UserManagerCompatV16;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/compat/UserManagerCompat;->sInstance:Lcom/android/launcher3/common/compat/UserManagerCompat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public abstract enableAndResetCache()V
.end method

.method public abstract getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;
.end method

.method public abstract getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J
.end method

.method public abstract getUserCreationTime(Lcom/android/launcher3/common/compat/UserHandleCompat;)J
.end method

.method public abstract getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;
.end method

.method public abstract getUserProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
.end method
