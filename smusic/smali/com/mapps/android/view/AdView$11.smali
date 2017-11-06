.class Lcom/mapps/android/view/AdView$11;
.super Landroid/os/Handler;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    .line 1137
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1141
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 1142
    .local v15, "nType":I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    .line 1143
    .local v14, "nIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    iget v1, v1, Lcom/mapps/android/view/AdView;->nBackStrech:I

    if-eqz v1, :cond_0

    .line 1144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$17(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/view/AdView;->setBackGround(Landroid/graphics/Bitmap;)V

    .line 1145
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$17(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 1146
    .local v13, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$17(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 1147
    .local v12, "bitmapHeight":I
    const/4 v1, 0x2

    if-eq v15, v1, :cond_1

    const/4 v1, 0x3

    if-ne v15, v1, :cond_2

    .line 1148
    :cond_1
    const/16 v13, 0x280

    .line 1149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$18(Lcom/mapps/android/view/AdView;)I

    move-result v12

    .line 1152
    :cond_2
    const/4 v10, 0x0

    .line 1153
    .local v10, "height":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)I

    move-result v9

    .line 1154
    .local v9, "tempWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$20(Lcom/mapps/android/view/AdView;)I

    move-result v16

    .line 1156
    .local v16, "tempHeight":I
    move/from16 v0, v16

    if-ge v0, v9, :cond_3

    .line 1157
    move/from16 v9, v16

    .line 1159
    :cond_3
    if-ge v13, v9, :cond_b

    .line 1160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$17(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_a

    .line 1161
    int-to-float v1, v9

    int-to-float v2, v13

    div-float v17, v1, v2

    .line 1162
    .local v17, "val":F
    int-to-float v1, v12

    mul-float v1, v1, v17

    float-to-int v10, v1

    .line 1174
    .end local v17    # "val":F
    :goto_0
    const/4 v1, 0x2

    if-eq v15, v1, :cond_4

    const/4 v1, 0x3

    if-ne v15, v1, :cond_d

    .line 1175
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$17(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$18(Lcom/mapps/android/view/AdView;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/mapps/android/view/AdView;->getBackStrech(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$21(Lcom/mapps/android/view/AdView;Landroid/graphics/drawable/Drawable;)V

    .line 1180
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    iget-boolean v1, v1, Lcom/mapps/android/view/AdView;->bAnimate:Z

    if-eqz v1, :cond_e

    .line 1181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdView;->getImage1()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$24(Lcom/mapps/android/view/AdView;Landroid/widget/RelativeLayout;)V

    .line 1184
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v18, v0

    new-instance v1, Lcom/mapps/android/view/AdView$SDKView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/mapps/android/view/AdView$SDKView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$25(Lcom/mapps/android/view/AdView;Lcom/mapps/android/view/AdView$SDKView;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/mapps/android/view/AdView$SDKView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    .line 1188
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$26(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$27(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdView;->getImage2()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$28(Lcom/mapps/android/view/AdView;Landroid/widget/RelativeLayout;)V

    .line 1191
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v18, v0

    new-instance v1, Lcom/mapps/android/view/AdView$SDKView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$27(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/mapps/android/view/AdView$SDKView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$29(Lcom/mapps/android/view/AdView;Lcom/mapps/android/view/AdView$SDKView;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$26(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/mapps/android/view/AdView$SDKView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$26(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    .line 1196
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/mapps/android/view/AdView$SDKView;->setBaseLayoutParm(II)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$26(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/mapps/android/view/AdView$SDKView;->setBaseLayoutParm(II)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$30(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$30(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 1200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$30(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1203
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$6(Lcom/mapps/android/view/AdView;I)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v1, v2, v3}, Lcom/mapps/android/view/AdView;->access$31(Lcom/mapps/android/view/AdView;FF)V

    .line 1226
    :goto_2
    return-void

    .line 1164
    :cond_a
    move v10, v12

    .line 1167
    goto/16 :goto_0

    :cond_b
    if-le v13, v9, :cond_c

    .line 1168
    int-to-float v1, v13

    int-to-float v2, v9

    div-float v17, v1, v2

    .line 1169
    .restart local v17    # "val":F
    int-to-float v1, v12

    div-float v1, v1, v17

    float-to-int v10, v1

    .line 1170
    goto/16 :goto_0

    .line 1171
    .end local v17    # "val":F
    :cond_c
    move v10, v12

    goto/16 :goto_0

    .line 1177
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$17(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$21(Lcom/mapps/android/view/AdView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1207
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    if-nez v1, :cond_f

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v18, v0

    new-instance v1, Lcom/mapps/android/view/AdView$SDKView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$32(Lcom/mapps/android/view/AdView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/mapps/android/view/AdView$SDKView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$25(Lcom/mapps/android/view/AdView;Lcom/mapps/android/view/AdView$SDKView;)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/mapps/android/view/AdView$SDKView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    .line 1214
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/mapps/android/view/AdView$SDKView;->setBaseLayoutParm(II)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$30(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$30(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_10

    .line 1218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$30(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1221
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$6(Lcom/mapps/android/view/AdView;I)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    .line 1223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$32(Lcom/mapps/android/view/AdView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/view/AdView$SDKView;->setSDKImageDraw(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method
