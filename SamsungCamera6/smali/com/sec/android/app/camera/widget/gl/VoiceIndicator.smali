.class public Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "VoiceIndicator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceIndicator"

.field public static final VOICE_STANDBY:I = 0x0

.field public static final VOICE_SUCCESS:I = 0x1


# instance fields
.field private final mVoiceSuccess:Lcom/samsung/android/glview/GLImage;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f020228

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->mVoiceSuccess:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->mVoiceSuccess:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->mVoiceSuccess:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    return-void
.end method

.method public setVoiceStatus(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    const-string v0, "VoiceIndicator"

    const-string v1, "setVoiceState = VOICE_STANDBY"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->mVoiceSuccess:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    const-string v0, "VoiceIndicator"

    const-string v1, "setVoiceState = VOICE_SUCCESS"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->mVoiceSuccess:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
