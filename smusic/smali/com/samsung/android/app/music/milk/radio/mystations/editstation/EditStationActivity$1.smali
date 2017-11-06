.class Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$1;
.super Ljava/lang/Object;
.source "EditStationActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainViewHeight()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    const v1, 0x7f120325

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public showActionBar(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;)Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "EditStationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showActionBar : ActionBar Show ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz p1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->setMiniPlayerEnabled(Z)V

    .line 124
    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public updateOptionMenu()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "EditStationActivity"

    const-string/jumbo v1, "updateOptionMenu : Update OptionMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->invalidateOptionsMenu()V

    .line 111
    return-void
.end method

.method public updateStationList()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.my.tab.update_mystation_list_from_server"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 130
    return-void
.end method
