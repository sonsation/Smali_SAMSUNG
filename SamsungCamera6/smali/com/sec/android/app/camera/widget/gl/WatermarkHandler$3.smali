.class Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;
.super Ljava/lang/Object;
.source "WatermarkHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->saveWatermarkTempFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$100(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$200(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :goto_0
    if-nez v15, :cond_0

    const-string v20, "WatermarkHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "tempBitmap is null. mId "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_0
    move-exception v10

    const-string v20, "WatermarkHandler"

    const-string v21, "Got oom exception "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/widget/gl/StickerView;

    move-result-object v20

    if-nez v20, :cond_1

    const-string v20, "WatermarkHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mStickerView is null. mId "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/widget/gl/StickerView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getScale()F

    move-result v20

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_3

    const/high16 v17, 0x3f800000    # 1.0f

    :goto_2
    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v15, v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getRotatedBitmap(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/widget/gl/StickerView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getPosition()Landroid/graphics/RectF;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/widget/gl/StickerView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getPosition()Landroid/graphics/RectF;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/widget/gl/StickerView;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/widget/gl/StickerView;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/widget/gl/StickerView;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getGLText()Lcom/samsung/android/glview/GLText;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/glview/GLText;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/widget/gl/StickerView;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getLeft()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/widget/gl/StickerView;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/StickerView;->mDynamicInfoText:[Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->getTop()F

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/widget/gl/StickerView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getScale()F

    move-result v17

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$400(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$400(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$500(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getRotatedBitmap(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$602(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$702(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;I)I

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/Util;->makeDirectory(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string v20, "WatermarkHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "fail to make directory : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/.Watermark"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/Util;->makeDirectory(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    const-string v20, "WatermarkHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "fail to make directory : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v11, "/watermark_temp.png"

    invoke-static {v9, v11, v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->saveBitmapFile(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mWatermarkHandlerListener:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mWatermarkHandlerListener:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;->onSaveWatermarkTempFileComplete(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$600(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$700(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I

    move-result v22

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v23

    invoke-static/range {v20 .. v23}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$800(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;III)Landroid/graphics/Point;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mWatermarkHandlerListener:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$900(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$400(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)F

    move-result v21

    mul-float v20, v20, v21

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    if-gez v20, :cond_9

    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$400(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)F

    move-result v20

    mul-float v20, v20, v8

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    if-gez v20, :cond_a

    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mWatermarkHandlerListener:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;->onWatermarkPositionChange(II)V

    :cond_8
    const-string v20, "WatermarkHandler"

    const-string v21, "saveWatermarkTempFile end"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$900(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$400(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)F

    move-result v21

    mul-float v20, v20, v21

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$400(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)F

    move-result v20

    mul-float v20, v20, v8

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    goto :goto_5
.end method
