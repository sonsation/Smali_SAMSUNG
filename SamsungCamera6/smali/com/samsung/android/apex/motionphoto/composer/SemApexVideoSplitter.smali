.class public Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;
.super Ljava/lang/Object;
.source "SemApexVideoSplitter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "apex_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->native_init()V

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-direct {v2, v0}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->native_setup(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-direct {v2, v0}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setSource(Ljava/io/FileDescriptor;JJ)V
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method private final native native_split(Ljava/io/FileDescriptor;JJJZZZ)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v1, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->setOnErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->native_finalize()V

    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->setOnErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V

    :cond_0
    return-void
.end method

.method public setOnInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V

    :cond_0
    return-void
.end method

.method public setSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->native_setSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public split(Ljava/io/FileDescriptor;JJJZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->native_split(Ljava/io/FileDescriptor;JJJZZZ)V

    return-void
.end method

.method public split(Ljava/io/FileDescriptor;JJZZZ)V
    .locals 12

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->native_split(Ljava/io/FileDescriptor;JJJZZZ)V

    return-void
.end method
