.class public Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "RadioHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioHistoryViewHolder"
.end annotation


# static fields
.field public static final TYPE_DATE_STATION_TRACK:I = 0x1

.field public static final TYPE_STATION_TRACK:I = 0x2

.field public static final TYPE_TRACK:I = 0x3


# instance fields
.field public headerText:Landroid/widget/TextView;

.field public headerView:Landroid/widget/LinearLayout;

.field private mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public moreMenu:Landroid/view/View;

.field public stationItem:Landroid/view/View;

.field public stationMoreMenu:Landroid/view/View;

.field public stationTitle:Landroid/view/ViewStub;

.field public trackItem:Landroid/view/View;

.field public trackTopDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;Landroid/view/View;I)V
    .locals 2
    .param p1, "adapter"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I

    .prologue
    .line 293
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->mRoots:Ljava/util/ArrayList;

    .line 294
    const v0, 0x7f120153

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->headerView:Landroid/widget/LinearLayout;

    .line 295
    const v0, 0x7f12014b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->headerText:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f120158

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->moreMenu:Landroid/view/View;

    .line 297
    const v0, 0x7f120154

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationTitle:Landroid/view/ViewStub;

    .line 298
    const v0, 0x7f120156

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->trackItem:Landroid/view/View;

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationItem:Landroid/view/View;

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationTitle:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationItem:Landroid/view/View;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationItem:Landroid/view/View;

    const v1, 0x7f1204c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationMoreMenu:Landroid/view/View;

    .line 303
    const v0, 0x7f120157

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->trackTopDivider:Landroid/view/View;

    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->initOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->mRoots:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->headerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->mRoots:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationTitle:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method


# virtual methods
.method public initLayout()V
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 361
    .local v0, "root":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 363
    .end local v0    # "root":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected initOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "adapter"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 312
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->moreMenu:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$1;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationMoreMenu:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$2;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->access$200(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationItem:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$3;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->trackItem:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$4;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->access$300(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->trackItem:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$5;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 357
    :cond_2
    return-void
.end method
