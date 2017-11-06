.class public interface abstract Lcom/samsung/android/app/music/provider/QueryDelegatable;
.super Ljava/lang/Object;
.source "QueryDelegatable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/QueryDelegatable$DelegationType;
    }
.end annotation


# virtual methods
.method public abstract isMatchedQueryDelegation(I)Z
.end method

.method public abstract onDelegateQuery(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
