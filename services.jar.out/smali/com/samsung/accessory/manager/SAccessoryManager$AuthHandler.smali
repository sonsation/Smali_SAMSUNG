.class final Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;
.super Landroid/os/Handler;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AuthHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/accessory/manager/SAccessoryManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 264
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->-wrap0(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Message;)V

    .line 268
    return-void
.end method
