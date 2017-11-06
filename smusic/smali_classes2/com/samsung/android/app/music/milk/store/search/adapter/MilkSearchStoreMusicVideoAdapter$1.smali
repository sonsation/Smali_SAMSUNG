.class Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreMusicVideoAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "968"

    const-string v2, "9694"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method
