.class public abstract Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;
.super Ljava/lang/Object;
.source "SemApexCallbackListener.java"


# static fields
.field public static final CMD_CANCLE_SPLIT:I = 0x3

.field public static final CMD_DO_SPLIT:I = 0x2

.field public static final CMD_HANDLE_APEXSERVER_DEAD:I = 0x6

.field public static final CMD_HANDLE_PROXY_DEAD:I = 0x5

.field public static final CMD_QUEUE_ID:I = 0x1

.field public static final CMD_REQUEST_ID:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onApexServerDead(Ljava/lang/String;I)V
.end method

.method public abstract onRecordingCancel(Ljava/util/HashMap;)V
.end method

.method public abstract onRecordingComplete(Ljava/util/HashMap;)V
.end method

.method public abstract onRecordingProxyDead(Ljava/lang/String;I)V
.end method

.method public abstract onRequestId()J
.end method

.method public abstract onStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
.end method
