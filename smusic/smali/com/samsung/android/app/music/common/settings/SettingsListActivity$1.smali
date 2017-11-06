.class Lcom/samsung/android/app/music/common/settings/SettingsListActivity$1;
.super Ljava/lang/Object;
.source "SettingsListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 167
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    .line 171
    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->access$000(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 172
    return-void
.end method
