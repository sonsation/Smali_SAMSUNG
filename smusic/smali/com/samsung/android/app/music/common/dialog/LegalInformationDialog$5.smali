.class Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$5;
.super Ljava/lang/Object;
.source "LegalInformationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->initAcceptAll(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$5;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$5;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->access$200(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 212
    .local v1, "checked":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$5;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->access$300(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 213
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 215
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$5;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->access$400(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 216
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 218
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$5;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->access$100(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V

    .line 219
    return-void
.end method
