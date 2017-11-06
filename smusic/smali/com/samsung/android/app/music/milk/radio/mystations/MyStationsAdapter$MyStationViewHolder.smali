.class public Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "MyStationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyStationViewHolder"
.end annotation


# instance fields
.field private more:Landroid/widget/ImageView;

.field private personalStationTag:Landroid/widget/ImageView;

.field private smartStationTag:Landroid/widget/ImageView;

.field private stationNum:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 277
    const v0, 0x7f1202e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->stationNum:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f1202e3

    .line 279
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->personalStationTag:Landroid/widget/ImageView;

    .line 280
    const v0, 0x7f1202e4

    .line 281
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->smartStationTag:Landroid/widget/ImageView;

    .line 282
    const v0, 0x7f1202e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->title:Landroid/widget/TextView;

    .line 283
    const v0, 0x7f1202e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->more:Landroid/widget/ImageView;

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->stationNum:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->addAnimateView(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->personalStationTag:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->addAnimateView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->smartStationTag:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->addAnimateView(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->addAnimateView(Landroid/view/View;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->more:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->addAnimateView(Landroid/view/View;)V

    .line 290
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->smartStationTag:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->personalStationTag:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->more:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$MyStationViewHolder;->stationNum:Landroid/widget/TextView;

    return-object v0
.end method
