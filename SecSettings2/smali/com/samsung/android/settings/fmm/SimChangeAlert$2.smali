.class Lcom/samsung/android/settings/fmm/SimChangeAlert$2;
.super Landroid/content/BroadcastReceiver;
.source "SimChangeAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/SimChangeAlert;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/fmm/SimChangeAlert;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->finish()V

    .line 151
    return-void
.end method
