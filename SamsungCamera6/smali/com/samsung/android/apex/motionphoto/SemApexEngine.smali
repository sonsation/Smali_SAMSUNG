.class public final Lcom/samsung/android/apex/motionphoto/SemApexEngine;
.super Ljava/lang/Object;
.source "SemApexEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;,
        Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;,
        Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;
    }
.end annotation


# static fields
.field public static final APEX_EVENT_ERROR:I = 0x1

.field public static final APEX_EVENT_INFO:I = 0x2

.field public static final APEX_EVENT_LIST_END:I = 0x63

.field public static final APEX_EVENT_LIST_START:I = 0x1

.field public static final APEX_INFO_COMPLETE_UPDATE_SCORE:I = 0x65

.field public static final APEX_INFO_LIST_END:I = 0xc8

.field public static final APEX_INFO_LIST_START:I = 0x64

.field public static final APEX_INFO_UPDATE_SCORE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ApexEngine"


# instance fields
.field private mNativeContext:J

.field private mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;

.field private mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;

.field private mSrcFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "apex_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->setupBestPhoto(JLjava/lang/String;)V

    return-void
.end method

.method private final native native_createBestPhoto(J)V
.end method

.method private final native native_createBestPhotos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;",
            ">;"
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_mergeClips([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native native_releaseBestPhoto()V
.end method

.method private final native native_releaseSplitClip()V
.end method

.method private final native native_setupBestPhoto(JLjava/lang/String;)V
.end method

.method private final native native_setupSplitClip(Ljava/io/FileDescriptor;JJ)V
.end method

.method private final native native_splitClipWithOffset(Ljava/io/FileDescriptor;JJJZZZ)Z
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 1

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method private processCbMessage(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;->onInfo(Lcom/samsung/android/apex/motionphoto/SemApexEngine;IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;->onError(Lcom/samsung/android/apex/motionphoto/SemApexEngine;II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final createBestPhoto(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_createBestPhoto(J)V

    return-void
.end method

.method public final createBestPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_createBestPhotos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final mergeClips([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_mergeClips([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final releaseBestPhoto()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_releaseBestPhoto()V

    return-void
.end method

.method public final releaseSplitClip()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_releaseSplitClip()V

    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;

    return-void
.end method

.method public final setupBestPhoto(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_setupBestPhoto(JLjava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mSrcFilePath:Ljava/lang/String;

    return-void
.end method

.method public final setupSplitClip(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_setupSplitClip(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public final splitClip(Ljava/io/FileDescriptor;JJZZZ)Z
    .locals 12

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_splitClipWithOffset(Ljava/io/FileDescriptor;JJJZZZ)Z

    move-result v0

    return v0
.end method

.method public final splitClipWithOffset(Ljava/io/FileDescriptor;JJJZZZ)Z
    .locals 2

    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_splitClipWithOffset(Ljava/io/FileDescriptor;JJJZZZ)Z

    move-result v0

    return v0
.end method
