.class Lcom/android/server/DirEncryptServiceHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method constructor <init>(Lcom/android/server/DirEncryptServiceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DirEncryptServiceHelper;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/DirEncryptServiceHelper$1$1;-><init>(Lcom/android/server/DirEncryptServiceHelper$1;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper$1$1;->start()V

    .line 112
    return-void
.end method
