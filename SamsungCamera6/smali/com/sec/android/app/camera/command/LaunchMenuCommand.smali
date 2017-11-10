.class public Lcom/sec/android/app/camera/command/LaunchMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchMenuCommand.java"


# instance fields
.field private final mCommandId:I

.field private final mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchMenuCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    iput p2, p0, Lcom/sec/android/app/camera/command/LaunchMenuCommand;->mCommandId:I

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/command/LaunchMenuCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchMenuCommand;->mCommandId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onLaunchMenu(I)Z

    move-result v0

    return v0
.end method
