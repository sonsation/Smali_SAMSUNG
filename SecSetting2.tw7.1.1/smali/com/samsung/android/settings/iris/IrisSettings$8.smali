.class Lcom/samsung/android/settings/iris/IrisSettings$8;
.super Ljava/lang/Object;
.source "IrisSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisSettings;->deleteRegisteredIris()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/IrisSettings;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisSettings$8;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 776
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$8;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->removeIris()V

    .line 777
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$8;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings$8;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f02ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 775
    return-void
.end method
