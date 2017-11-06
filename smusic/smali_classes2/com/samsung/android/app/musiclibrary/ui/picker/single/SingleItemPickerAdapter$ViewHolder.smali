.class public Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "SingleItemPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    .line 138
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 139
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method
