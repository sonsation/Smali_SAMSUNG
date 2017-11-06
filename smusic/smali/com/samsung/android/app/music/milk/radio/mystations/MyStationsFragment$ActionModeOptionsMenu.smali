.class Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "MyStationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 243
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 245
    const v0, 0x7f130023

    invoke-virtual {p3, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 246
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 261
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 311
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onOptionsItemSelected(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 263
    :pswitch_0
    const-string v3, "MyStationsFragment"

    const-string/jumbo v4, "onOptionsItemSelected - Delete menu selected."

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v2, "stationIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 269
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v3, "station_id"

    .line 270
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 269
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    :cond_1
    const-string v3, "MyStationsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOptionsItemSelected - Delete menu selected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v3

    const-string v4, "905"

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    .line 278
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;)V

    .line 277
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->removeStationFromMyStations(Ljava/lang/String;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 305
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "905"

    const-string v5, "9082"

    .line 306
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x7f1205d7
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const v1, 0x7f1205d7

    .line 250
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 253
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
