.class public Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ShootingModeSelectCommand.java"


# instance fields
.field private final mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

.field private final mShootingMode:I

.field private final mShootingModeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    invoke-static {p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingModeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    invoke-static {p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    iput-object p3, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingModeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    iget v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    iget-object v2, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingModeName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onShootingModeMenuSelect(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
