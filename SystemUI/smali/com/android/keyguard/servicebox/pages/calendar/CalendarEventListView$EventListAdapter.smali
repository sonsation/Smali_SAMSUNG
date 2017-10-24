.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarEventListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListAdapter"
.end annotation


# instance fields
.field mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p2, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;>;"
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 217
    iput-object p2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    .line 216
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEvent(I)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 230
    :cond_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 235
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 245
    if-nez p2, :cond_0

    .line 246
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v5

    if-nez v5, :cond_6

    .line 247
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$layout;->servicebox_today_event_item_small:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 253
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 255
    sget v5, Lcom/android/keyguard/R$id;->servicebox_today_event_time:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 256
    .local v2, "timeView":Landroid/widget/TextView;
    sget v5, Lcom/android/keyguard/R$id;->servicebox_today_event_title:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 257
    .local v4, "titleView":Landroid/widget/TextView;
    sget v5, Lcom/android/keyguard/R$id;->servicebox_today_event_dot:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "dotView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 260
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    .line 262
    .local v1, "event":Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    if-eqz v1, :cond_5

    .line 263
    if-eqz v2, :cond_2

    .line 264
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v5

    if-nez v5, :cond_7

    .line 265
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "servicebox_today_event_time_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 271
    :cond_2
    if-eqz v4, :cond_4

    .line 272
    iget-object v3, v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    .line 273
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 274
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->servicebox_event_my_event:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 276
    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "servicebox_today_event_title_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 279
    .end local v3    # "title":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "servicebox_today_event_dot_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 285
    .end local v1    # "event":Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    :cond_5
    return-object p2

    .line 248
    .end local v0    # "dotView":Landroid/view/View;
    .end local v2    # "timeView":Landroid/widget/TextView;
    .end local v4    # "titleView":Landroid/widget/TextView;
    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 249
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$layout;->servicebox_today_event_item_big:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 266
    .restart local v0    # "dotView":Landroid/view/View;
    .restart local v1    # "event":Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    .restart local v2    # "timeView":Landroid/widget/TextView;
    .restart local v4    # "titleView":Landroid/widget/TextView;
    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 267
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
