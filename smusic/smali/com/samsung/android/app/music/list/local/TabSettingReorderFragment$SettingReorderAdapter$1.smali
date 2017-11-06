.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;
.super Ljava/lang/Object;
.source "TabSettingReorderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

.field final synthetic val$holder:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

.field final synthetic val$item:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->val$holder:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->val$item:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->val$holder:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->val$holder:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->val$holder:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->val$item:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;->val$holder:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->isChecked:Z

    .line 378
    :cond_0
    return-void

    .line 375
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
