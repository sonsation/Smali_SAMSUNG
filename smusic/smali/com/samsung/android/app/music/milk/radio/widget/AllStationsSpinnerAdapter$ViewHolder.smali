.class Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AllStationsSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field create_station:Landroid/view/View;

.field header:Landroid/view/View;

.field station:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "header"    # Landroid/view/View;
    .param p2, "create_station"    # Landroid/view/View;
    .param p3, "station"    # Landroid/view/View;

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;->header:Landroid/view/View;

    .line 260
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;->create_station:Landroid/view/View;

    .line 261
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/widget/AllStationsSpinnerAdapter$ViewHolder;->station:Landroid/view/View;

    .line 262
    return-void
.end method
