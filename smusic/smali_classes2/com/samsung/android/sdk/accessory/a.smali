.class public abstract Lcom/samsung/android/sdk/accessory/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/samsung/android/sdk/accessory/a;

.field private static synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/accessory/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/accessory/a;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/samsung/android/sdk/accessory/a;
    .locals 4

    const-class v1, Lcom/samsung/android/sdk/accessory/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/a;->a:Lcom/samsung/android/sdk/accessory/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/accessory/a;->a:Lcom/samsung/android/sdk/accessory/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "com.samsung.accessory.a.a.b"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "com.samsung.accessory.a.a.b"

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-boolean v0, Lcom/samsung/android/sdk/accessory/a;->b:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/accessory/a;->a:Lcom/samsung/android/sdk/accessory/a;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "The DEFAULT field must be initialized"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    sget-boolean v2, Lcom/samsung/android/sdk/accessory/a;->b:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/accessory/a;->a:Lcom/samsung/android/sdk/accessory/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(I)V
.end method

.method protected abstract a(Landroid/content/Context;)V
.end method

.method protected abstract b(I)Lcom/samsung/accessory/a/a/a;
.end method
