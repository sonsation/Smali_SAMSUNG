.class Lcom/mods/grx/quickpanel/GrxQuickPanel$ShortCut;
.super Landroid/widget/LinearLayout;
.source "GrxQuickPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mods/grx/quickpanel/GrxQuickPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortCut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mods/grx/quickpanel/GrxQuickPanel;


# direct methods
.method public constructor <init>(Lcom/mods/grx/quickpanel/GrxQuickPanel;Landroid/view/View$OnClickListener;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 10

    iput-object p1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel$ShortCut;->this$0:Lcom/mods/grx/quickpanel/GrxQuickPanel;

    invoke-direct {p0, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p3, p4}, Lcom/mods/grx/Utils;->get_grx_icon_drawable_from_intent(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p3, p4}, Lcom/mods/grx/Utils;->get_grx_label_from_intent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/mods/grx/quickpanel/GrxQuickPanel$ShortCut;->setOrientation(I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->access$200(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I

    move-result v6

    invoke-static {p1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->access$200(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->access$300(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I

    move-result v6

    invoke-static {p1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->access$300(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I

    move-result v7

    invoke-static {p1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->access$300(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I

    move-result v8

    invoke-static {p1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->access$300(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-static {p1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->access$400(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I

    move-result v6

    invoke-static {p1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->access$500(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->new_selector(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {v2, p5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/mods/grx/quickpanel/GrxQuickPanel$ShortCut;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v6, 0x11

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mods/grx/quickpanel/GrxQuickPanel$ShortCut;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v6, p1, Lcom/mods/grx/quickpanel/GrxQuickPanel;->DPI_TEXT_SIZE:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p1}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->access$600(Lcom/mods/grx/quickpanel/GrxQuickPanel;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/mods/grx/quickpanel/GrxQuickPanel$ShortCut;->addView(Landroid/view/View;)V

    return-void
.end method
