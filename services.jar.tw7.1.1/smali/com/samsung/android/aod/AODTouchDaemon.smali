.class public final Lcom/samsung/android/aod/AODTouchDaemon;
.super Ljava/lang/Object;
.source "AODTouchDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/AODTouchDaemon$cHandler;
    }
.end annotation


# static fields
.field protected static CHECK:I

.field protected static START:I

.field private static daemon:Lcom/samsung/android/aod/AODTouchDaemon;


# instance fields
.field private final consoleResult:Ljava/io/File;

.field private final handler:Landroid/os/Handler;

.field private final inputConsole:Ljava/io/File;

.field private final inputToggle:Ljava/io/File;

.field private final thread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/aod/AODTouchDaemon;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon;->inputToggle:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/aod/AODTouchDaemon;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon;->inputConsole:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/aod/AODTouchDaemon;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon;->consoleResult:Ljava/io/File;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    sput v0, Lcom/samsung/android/aod/AODTouchDaemon;->START:I

    const/16 v0, 0xc

    sput v0, Lcom/samsung/android/aod/AODTouchDaemon;->CHECK:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon;->inputToggle:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon;->inputConsole:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/cmd_result"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon;->consoleResult:Ljava/io/File;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ChickenPark"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon;->thread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;

    iget-object v1, p0, Lcom/samsung/android/aod/AODTouchDaemon;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/aod/AODTouchDaemon$cHandler;-><init>(Lcom/samsung/android/aod/AODTouchDaemon;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static call(I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/aod/AODTouchDaemon;->getInstance()Lcom/samsung/android/aod/AODTouchDaemon;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/aod/AODTouchDaemon;->onEvent(I)V

    return-void
.end method

.method protected static getInstance()Lcom/samsung/android/aod/AODTouchDaemon;
    .locals 1

    sget-object v0, Lcom/samsung/android/aod/AODTouchDaemon;->daemon:Lcom/samsung/android/aod/AODTouchDaemon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/aod/AODTouchDaemon;

    invoke-direct {v0}, Lcom/samsung/android/aod/AODTouchDaemon;-><init>()V

    sput-object v0, Lcom/samsung/android/aod/AODTouchDaemon;->daemon:Lcom/samsung/android/aod/AODTouchDaemon;

    :cond_0
    sget-object v0, Lcom/samsung/android/aod/AODTouchDaemon;->daemon:Lcom/samsung/android/aod/AODTouchDaemon;

    return-object v0
.end method


# virtual methods
.method public onEvent(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon;->handler:Landroid/os/Handler;

    sget v1, Lcom/samsung/android/aod/AODTouchDaemon;->START:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/aod/AODTouchDaemon;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method
