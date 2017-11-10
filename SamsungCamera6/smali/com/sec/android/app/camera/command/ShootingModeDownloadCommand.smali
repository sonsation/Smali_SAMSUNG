.class public Lcom/sec/android/app/camera/command/ShootingModeDownloadCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ShootingModeDownloadCommand.java"


# instance fields
.field private final mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/ShootingModeDownloadCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeDownloadCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onShootingModeDownloadCommand()Z

    const/4 v0, 0x1

    return v0
.end method
