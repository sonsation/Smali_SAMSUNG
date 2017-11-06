.class Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$2;
.super Ljava/lang/Object;
.source "MyStationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    const-string v0, "MyStationsAdapter"

    const-string/jumbo v1, "onClick : context menu"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 175
    .local v8, "position":I
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-static {v0, v8}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$1300(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;I)Landroid/database/Cursor;

    move-result-object v6

    .line 176
    .local v6, "c":Landroid/database/Cursor;
    const-string/jumbo v0, "station_station_name"

    .line 177
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "stationName":Ljava/lang/String;
    const-string/jumbo v0, "station_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "stationId":Ljava/lang/String;
    const-string/jumbo v0, "station_type"

    .line 180
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "stationType":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-static {v1, v8}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$1400(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;I)Landroid/database/Cursor;

    move-result-object v1

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$1500(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;Landroid/database/Cursor;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/PopupMenu;

    move-result-object v7

    .line 184
    .local v7, "menu":Landroid/widget/PopupMenu;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$1600(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 185
    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 187
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "904"

    const-string v2, "9074"

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method
