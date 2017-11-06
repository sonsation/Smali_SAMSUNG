.class public interface abstract Lcom/samsung/android/app/music/milk/share/IShareItem;
.super Ljava/lang/Object;
.source "IShareItem.java"


# static fields
.field public static final SHARE_ITEM_FACEBOOK:I = 0x3ec

.field public static final SHARE_ITEM_INSTAGRAM:I = 0x3ee

.field public static final SHARE_ITEM_KAKAO_STORY:I = 0x3eb

.field public static final SHARE_ITEM_KAKAO_TALK:I = 0x3e8

.field public static final SHARE_ITEM_LINE:I = 0x3ea

.field public static final SHARE_ITEM_MORE:I = 0x3ed

.field public static final SHARE_ITEM_TWITTER:I = 0x3e9


# virtual methods
.method public abstract getSharedType()I
.end method

.method public abstract initialize()V
.end method

.method public abstract login()V
.end method

.method public abstract share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
.end method
