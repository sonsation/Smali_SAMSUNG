.class public Lcom/sec/android/app/camera/command/WatermarkMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "WatermarkMenuSelectCommand.java"


# instance fields
.field private final mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

.field private mWatermarkId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/WatermarkMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    invoke-static {p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/command/WatermarkMenuSelectCommand;->mWatermarkId:I

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/command/WatermarkMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    iget v1, p0, Lcom/sec/android/app/camera/command/WatermarkMenuSelectCommand;->mWatermarkId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onWatermarkMenuSelect(IZ)Z

    move-result v0

    return v0
.end method
