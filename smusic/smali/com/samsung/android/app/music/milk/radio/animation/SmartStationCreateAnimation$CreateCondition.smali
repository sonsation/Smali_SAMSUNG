.class public interface abstract Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;
.super Ljava/lang/Object;
.source "SmartStationCreateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CreateCondition"
.end annotation


# static fields
.field public static final CANCLED:I = -0x1

.field public static final LOADED:I = 0x1

.field public static final LOADING:I


# virtual methods
.method public abstract getCondition()I
    .annotation build Landroid/support/annotation/IntRange;
        from = -0x1L
        to = 0x1L
    .end annotation
.end method
