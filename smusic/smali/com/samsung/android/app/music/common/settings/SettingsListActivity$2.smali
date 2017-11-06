.class Lcom/samsung/android/app/music/common/settings/SettingsListActivity$2;
.super Ljava/lang/Object;
.source "SettingsListActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/SettingsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLargerFontChanged(I)V
    .locals 2
    .param p1, "fontResId"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->access$100(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->getTextLargerFontSizeResId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->access$100(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->setTextLargerFontSize(I)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->access$000(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$2;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->access$100(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    :cond_0
    return-void
.end method
