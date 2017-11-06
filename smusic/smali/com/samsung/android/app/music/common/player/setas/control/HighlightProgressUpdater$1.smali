.class Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;
.super Ljava/lang/Object;
.source "HighlightProgressUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->update(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

.field final synthetic val$delayMs:J

.field final synthetic val$duration:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;IIJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    iput p2, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$offset:I

    iput p3, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$duration:I

    iput-wide p4, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$delayMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 64
    invoke-static {}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$offset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$duration:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") - delay : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$delayMs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$100(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/content/Context;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "timeStart":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$200(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$200(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .line 68
    invoke-static {v7}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$100(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    iget v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$offset:I

    if-ltz v6, :cond_3

    .line 70
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$300(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$offset:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .line 72
    invoke-static {v7}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$400(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$duration:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 73
    .local v1, "paddingValue":I
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$300(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v1, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 75
    iget v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$offset:I

    if-eqz v6, :cond_2

    .line 76
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$100(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$offset:I

    div-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    invoke-static {v6, v8, v9}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "timeOffset":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 80
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .line 81
    invoke-static {v7}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .line 82
    invoke-static {v8}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 81
    invoke-virtual {v6, v7, v10, v8, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 83
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .line 84
    invoke-static {v7}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$100(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$offset:I

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v1, v6

    .line 87
    .local v4, "timeOffsetPadding":I
    if-gez v4, :cond_0

    .line 88
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "paddingValue":I
    .end local v3    # "timeOffset":Ljava/lang/String;
    .end local v4    # "timeOffsetPadding":I
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$100(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$duration:I

    div-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    invoke-static {v6, v8, v9}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "timeDuration":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$600(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$600(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .line 104
    invoke-static {v7}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$100(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->val$duration:I

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    return-void

    .line 89
    .end local v2    # "timeDuration":Ljava/lang/String;
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "paddingValue":I
    .restart local v3    # "timeOffset":Ljava/lang/String;
    .restart local v4    # "timeOffsetPadding":I
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v7}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$400(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 90
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    invoke-virtual {v6, v7, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v4, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 95
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "timeOffset":Ljava/lang/String;
    .end local v4    # "timeOffsetPadding":I
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 98
    .end local v1    # "paddingValue":I
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    invoke-static {v6}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->access$300(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
