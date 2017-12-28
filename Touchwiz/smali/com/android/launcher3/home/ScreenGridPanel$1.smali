.class Lcom/android/launcher3/home/ScreenGridPanel$1;
.super Ljava/lang/Object;
.source "ScreenGridPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/ScreenGridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ScreenGridPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ScreenGridPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    .local v2, "buttonName":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 279
    .local v3, "cellXY":[I
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    .line 280
    .local v6, "gridX":I
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    .line 282
    .local v7, "gridY":I
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8, v6, v7}, Lcom/android/launcher3/home/ScreenGridPanel;->access$000(Lcom/android/launcher3/home/ScreenGridPanel;II)I

    move-result v5

    .line 283
    .local v5, "gridIndex":I
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$100(Lcom/android/launcher3/home/ScreenGridPanel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    .line 284
    .local v0, "appsGridX":I
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$100(Lcom/android/launcher3/home/ScreenGridPanel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    .line 286
    .local v1, "appsGridY":I
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900b2

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 286
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "gridExplainString":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$200(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 291
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeController;->isChangeGridState()Z

    move-result v8

    if-nez v8, :cond_0

    .line 292
    const/4 v8, 0x0

    aget v8, v3, v8

    if-ne v8, v6, :cond_1

    const/4 v8, 0x1

    aget v8, v3, v8

    if-ne v8, v7, :cond_1

    .line 293
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 294
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 295
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$500(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8, v2}, Lcom/android/launcher3/home/ScreenGridPanel;->access$800(Lcom/android/launcher3/home/ScreenGridPanel;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v7, v9}, Lcom/android/launcher3/home/HomeController;->changeGrid(IIZ)V

    .line 310
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v7, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertClickGridButtonLog(IIZ)V

    .line 312
    :cond_0
    return-void

    .line 297
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 298
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 299
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$600(Lcom/android/launcher3/home/ScreenGridPanel;)I

    move-result v8

    if-ne v0, v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$700(Lcom/android/launcher3/home/ScreenGridPanel;)I

    move-result v8

    if-eq v1, v8, :cond_3

    .line 301
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$500(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$500(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
