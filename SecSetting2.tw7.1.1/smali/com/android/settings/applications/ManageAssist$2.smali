.class Lcom/android/settings/applications/ManageAssist$2;
.super Ljava/lang/Object;
.source "ManageAssist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageAssist;

.field final synthetic val$newAssitPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/ManageAssist;
    .param p2, "val$newAssitPackage"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/settings/applications/ManageAssist$2;->this$0:Lcom/android/settings/applications/ManageAssist;

    iput-object p2, p0, Lcom/android/settings/applications/ManageAssist$2;->val$newAssitPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist$2;->this$0:Lcom/android/settings/applications/ManageAssist;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist$2;->val$newAssitPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageAssist;->-wrap0(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist$2;->this$0:Lcom/android/settings/applications/ManageAssist;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist$2;->this$0:Lcom/android/settings/applications/ManageAssist;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageAssist;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist$2;->val$newAssitPackage:Ljava/lang/String;

    .line 275
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 273
    return-void
.end method
