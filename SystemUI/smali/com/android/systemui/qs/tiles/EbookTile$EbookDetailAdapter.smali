.class final Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;
.super Ljava/lang/Object;
.source "EbookTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/EbookTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EbookDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/EbookTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/EbookTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/EbookTile;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/EbookTile;Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/EbookTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/EbookTile;->-get1(Lcom/android/systemui/qs/tiles/EbookTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04010a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 241
    const v0, 0x7f13022e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0f0453

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 243
    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 235
    const/16 v0, 0x226

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 248
    sget v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_READINGMODE:I

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ModePreviewTablet"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/EbookTile;->-get1(Lcom/android/systemui/qs/tiles/EbookTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0452

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/EbookTile;->-get3(Lcom/android/systemui/qs/tiles/EbookTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->-wrap2(Lcom/android/systemui/qs/tiles/EbookTile;Z)V

    .line 230
    return p1
.end method
