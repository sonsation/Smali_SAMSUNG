.class Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;
.super Ljava/lang/Object;
.source "AppsPickerSearchListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;->this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    const v3, 0x7f110046

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 61
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 63
    .local v2, "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    const-string v1, ""

    .line 64
    .local v1, "description":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 65
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;->this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-static {v4}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->access$000(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;->this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-static {v3}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->access$100(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;->this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-static {v3}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->access$100(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;->onToggleItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 77
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    return-void

    .line 69
    .restart local v1    # "description":Ljava/lang/String;
    .restart local v2    # "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;->this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-static {v4}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->access$000(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09007e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
