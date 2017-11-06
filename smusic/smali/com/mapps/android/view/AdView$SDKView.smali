.class Lcom/mapps/android/view/AdView$SDKView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDKView"
.end annotation


# instance fields
.field private btn_image:Landroid/widget/ImageView;

.field private icon_image:Landroid/widget/ImageView;

.field private icon_layout:Landroid/widget/LinearLayout;

.field private layout_base:Landroid/widget/RelativeLayout;

.field private layout_linearbase:Landroid/widget/LinearLayout;

.field private sdk_image:Landroid/widget/ImageView;

.field private text_bottom:Landroid/widget/TextView;

.field private text_top:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method public constructor <init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 21
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "imgview"    # Landroid/widget/RelativeLayout;
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "tptxt"    # Ljava/lang/String;
    .param p7, "botext"    # Ljava/lang/String;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "TextColor"    # Ljava/lang/String;

    .prologue
    .line 1843
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    .line 1844
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1834
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    .line 1835
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    .line 1836
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    .line 1837
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    .line 1838
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    .line 1839
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    .line 1840
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->layout_base:Landroid/widget/RelativeLayout;

    .line 1841
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    .line 1846
    if-eqz p10, :cond_0

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_5

    .line 1847
    :cond_0
    const-string p10, "#FFFFFF"

    .line 1855
    :cond_1
    :goto_0
    :try_start_0
    invoke-static/range {p10 .. p10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1860
    :goto_1
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->layout_base:Landroid/widget/RelativeLayout;

    .line 1861
    new-instance v17, Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x1

    invoke-direct/range {v18 .. v20}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1865
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1866
    .local v10, "lparam3":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v17, Landroid/widget/LinearLayout;

    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1869
    const/4 v11, 0x0

    .line 1870
    .local v11, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v17, Landroid/widget/LinearLayout;

    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    .line 1871
    if-eqz p5, :cond_6

    move-object/from16 v17, p5

    .line 1872
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1873
    .local v4, "bmp":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 1874
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1875
    .local v8, "iwidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1876
    .local v7, "iheight":I
    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x3c

    invoke-static/range {v17 .. v18}, Lcom/mapps/android/util/DisplayUtil;->DPFromPixel(Landroid/content/Context;I)I

    move-result v8

    .line 1877
    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x3c

    invoke-static/range {v17 .. v18}, Lcom/mapps/android/util/DisplayUtil;->DPFromPixel(Landroid/content/Context;I)I

    move-result v7

    .line 1879
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .end local v11    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v11, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1880
    .restart local v11    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x5

    const/16 v18, 0x3

    const/16 v19, 0x3

    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 1890
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "iheight":I
    .end local v8    # "iwidth":I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1891
    new-instance v17, Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1896
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1897
    .local v12, "lparams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0xa

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1898
    new-instance v16, Landroid/widget/LinearLayout;

    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1899
    .local v16, "text_layout":Landroid/widget/LinearLayout;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1900
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1902
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1903
    .local v9, "lparam":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1905
    new-instance v17, Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/high16 v18, 0x41800000    # 16.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x50

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static/range {p10 .. p10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v18

    or-int/lit8 v18, v18, 0x20

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1913
    new-instance v17, Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/high16 v18, 0x41800000    # 16.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x30

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static/range {p10 .. p10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1930
    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x23

    invoke-static/range {v17 .. v18}, Lcom/mapps/android/util/DisplayUtil;->DPFromPixel(Landroid/content/Context;I)I

    move-result v14

    .line 1931
    .local v14, "mwidth":I
    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x23

    invoke-static/range {v17 .. v18}, Lcom/mapps/android/util/DisplayUtil;->DPFromPixel(Landroid/content/Context;I)I

    move-result v13

    .line 1932
    .local v13, "mheight":I
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1933
    .local v15, "rparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1934
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1935
    new-instance v17, Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView;->getButtonImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x1a0a

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setId(I)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/mapps/android/view/AdView$SDKView$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mapps/android/view/AdView$SDKView$1;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1967
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$48(Lcom/mapps/android/view/AdView;Z)V

    .line 1969
    invoke-static/range {p1 .. p1}, Lcom/mapps/android/view/AdView;->access$49(Lcom/mapps/android/view/AdView;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1972
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->addView(Landroid/view/View;)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1974
    if-nez p5, :cond_4

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1977
    :cond_4
    return-void

    .line 1849
    .end local v9    # "lparam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "lparam3":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "lparams2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "mheight":I
    .end local v14    # "mwidth":I
    .end local v15    # "rparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "text_layout":Landroid/widget/LinearLayout;
    :cond_5
    const-string v17, "#"

    move-object/from16 v0, p10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1850
    .local v6, "idx":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_1

    .line 1851
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "#"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    goto/16 :goto_0

    .line 1856
    .end local v6    # "idx":I
    :catch_0
    move-exception v5

    .line 1857
    .local v5, "e":Ljava/lang/Exception;
    const-string p10, "#FFFFFF"

    goto/16 :goto_1

    .line 1886
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "lparam3":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v11    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .end local v11    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1887
    .restart local v11    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x5

    const/16 v18, 0x3

    const/16 v19, 0x3

    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView$SDKView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .prologue
    .line 1999
    invoke-direct {p0}, Lcom/mapps/android/view/AdView$SDKView;->setIconX()V

    return-void
.end method

.method static synthetic access$2(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .prologue
    .line 2148
    invoke-direct {p0}, Lcom/mapps/android/view/AdView$SDKView;->sspLanding()V

    return-void
.end method

.method static synthetic access$3(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .prologue
    .line 2124
    invoke-direct {p0}, Lcom/mapps/android/view/AdView$SDKView;->requestTouch()V

    return-void
.end method

.method static synthetic access$4(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    return-object v0
.end method

.method private requestTouch()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2125
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0, v3}, Lcom/mapps/android/view/AdView;->access$44(Lcom/mapps/android/view/AdView;Z)V

    .line 2126
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->isUseOutClickAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2127
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mapps/android/listner/AdLinkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mapps/android/listner/AdLinkListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$45(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2, v3}, Lcom/mapps/android/view/AdView;->access$54(Lcom/mapps/android/view/AdView;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mapps/android/listner/AdLinkListener;->onClickUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    :cond_0
    :goto_0
    return-void

    .line 2131
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$SDKView$4;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdView$SDKView$4;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    .line 2144
    const-string v2, "TouchThread"

    .line 2131
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2144
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private setIconX()V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 2000
    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 2001
    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v7, v12, v12}, Landroid/widget/ImageView;->measure(II)V

    .line 2002
    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-double v8, v7

    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    int-to-double v10, v7

    div-double v4, v8, v10

    .line 2003
    .local v4, "viewHeightToBitmapHeightRatio":D
    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    int-to-double v8, v7

    mul-double/2addr v8, v4

    double-to-int v6, v8

    .line 2004
    .local v6, "w":I
    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v6

    div-int/lit8 v0, v7, 0x2

    .line 2005
    .local v0, "firstPosition":I
    const/4 v1, 0x5

    .line 2006
    .local v1, "gap":I
    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 2007
    .local v2, "iconWidth":I
    add-int v7, v0, v6

    sub-int/2addr v7, v2

    sub-int v3, v7, v1

    .line 2008
    .local v3, "iconX":I
    if-lez v3, :cond_0

    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 2009
    :cond_0
    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    sub-int v3, v7, v2

    .line 2011
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    .line 2012
    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    int-to-float v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    .line 2014
    :cond_2
    invoke-static {}, Lcom/mapps/android/view/AdView;->access$50()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "y"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2015
    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2021
    .end local v0    # "firstPosition":I
    .end local v1    # "gap":I
    .end local v2    # "iconWidth":I
    .end local v3    # "iconX":I
    .end local v4    # "viewHeightToBitmapHeightRatio":D
    .end local v6    # "w":I
    :cond_3
    :goto_0
    return-void

    .line 2017
    .restart local v0    # "firstPosition":I
    .restart local v1    # "gap":I
    .restart local v2    # "iconWidth":I
    .restart local v3    # "iconX":I
    .restart local v4    # "viewHeightToBitmapHeightRatio":D
    .restart local v6    # "w":I
    :cond_4
    iget-object v7, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private sspLanding()V
    .locals 4

    .prologue
    .line 2149
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$55(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2150
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$55(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getLanding_url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$55(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getLanding_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2151
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$44(Lcom/mapps/android/view/AdView;Z)V

    .line 2152
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$55(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$56(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;)V

    .line 2153
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$55(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_click()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$55(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_click()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2154
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2155
    .local v0, "message":Landroid/os/Message;
    const-string v1, "Dsp_click"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2156
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$55(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_click()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mapps/android/view/AdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 2158
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView;->isUseOutClickAction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2159
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mapps/android/listner/AdLinkListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2160
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$55(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2161
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mapps/android/listner/AdLinkListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$45(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$55(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getLanding_url()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/mapps/android/listner/AdLinkListener;->onClickUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    :cond_1
    :goto_0
    return-void

    .line 2165
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdView$SDKView$5;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$SDKView$5;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    .line 2177
    const-string v3, "TouchThread"

    .line 2165
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public finalizeSDKView()V
    .locals 2

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$17(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2075
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$17(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2076
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$52(Lcom/mapps/android/view/AdView;Landroid/graphics/Bitmap;)V

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2079
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$53(Landroid/widget/ImageView;)V

    .line 2080
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2081
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2082
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2083
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$53(Landroid/widget/ImageView;)V

    .line 2084
    :cond_3
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 2085
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$53(Landroid/widget/ImageView;)V

    .line 2086
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 2091
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$46(Lcom/mapps/android/view/AdView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2092
    const/4 v0, 0x0

    .line 2121
    :cond_0
    :goto_0
    return v0

    .line 2094
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2096
    :pswitch_0
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$47(Lcom/mapps/android/view/AdView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2098
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2104
    new-instance v1, Lcom/mapps/android/view/AdView$SDKView$3;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdView$SDKView$3;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    invoke-static {v1}, Lcom/mezzo/common/MZBtnUtils;->setDelayClick(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 2094
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setAnimated(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2184
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2185
    new-instance v0, Lcom/mapps/android/view/AdView$SDKView$6;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$SDKView$6;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2200
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2201
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2203
    :cond_0
    return-void
.end method

.method public setBaseLayoutParm(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v3, 0xe

    .line 2058
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$48(Lcom/mapps/android/view/AdView;Z)V

    .line 2059
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2060
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2061
    .local v0, "tvparams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2062
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2069
    :goto_0
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->layout_base:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2070
    return-void

    .line 2063
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2064
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 2065
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2066
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 2068
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public setChangeType(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "topText"    # Ljava/lang/String;
    .param p3, "bottomText"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3c

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 2024
    if-nez p1, :cond_0

    .line 2025
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2046
    :goto_0
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2047
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 2048
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 2049
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2050
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2055
    :goto_1
    return-void

    :cond_0
    move-object v4, p1

    .line 2027
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2028
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 2029
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 2030
    .local v2, "iwidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 2031
    .local v1, "iheight":I
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/mapps/android/util/DisplayUtil;->DPFromPixel(Landroid/content/Context;I)I

    move-result v2

    .line 2032
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/mapps/android/util/DisplayUtil;->DPFromPixel(Landroid/content/Context;I)I

    move-result v1

    .line 2034
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2035
    .local v3, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2036
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2037
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 2038
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 2041
    .end local v1    # "iheight":I
    .end local v2    # "iwidth":I
    .end local v3    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2042
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2052
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 2053
    iget-object v4, p0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setSDKImageDraw(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1983
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mapps/android/view/AdView$SDKView$2;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdView$SDKView$2;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1996
    :cond_0
    return-void
.end method
