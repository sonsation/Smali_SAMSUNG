.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
.super Ljava/lang/Object;
.source "ISearchView.java"


# static fields
.field public static final DEFAULT_QUERY_TEXT:Ljava/lang/String; = ""


# virtual methods
.method public abstract addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
.end method

.method public abstract addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;Z)V
.end method

.method public abstract getQueryHint()Ljava/lang/CharSequence;
.end method

.method public abstract getQueryText()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract removeOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
.end method

.method public abstract setQueryHint(Ljava/lang/CharSequence;)V
.end method

.method public abstract setQueryText(Ljava/lang/String;)V
.end method
