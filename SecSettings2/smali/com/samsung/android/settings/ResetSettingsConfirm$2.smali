.class Lcom/samsung/android/settings/ResetSettingsConfirm$2;
.super Ljava/lang/Object;
.source "ResetSettingsConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ResetSettingsConfirm;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-virtual {v1}, Lcom/samsung/android/settings/ResetSettingsConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-static {v0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->-wrap0(Lcom/samsung/android/settings/ResetSettingsConfirm;)V

    .line 174
    return-void
.end method
