.class public Lcom/sec/android/gradient_color_extractor/GradientMaker;
.super Ljava/lang/Object;
.source "GradientMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;
    }
.end annotation


# static fields
.field static mDithering_sample_size_value:I

.field static mDithering_step_value:I

.field static mGradientFunction:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Sine:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker;->mGradientFunction:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    .line 31
    const/16 v0, 0x200

    sput v0, Lcom/sec/android/gradient_color_extractor/GradientMaker;->mDithering_step_value:I

    .line 37
    const/16 v0, 0x13

    sput v0, Lcom/sec/android/gradient_color_extractor/GradientMaker;->mDithering_sample_size_value:I

    return-void
.end method
