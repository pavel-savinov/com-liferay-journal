<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/init.jsp" %>

<%
DLMimeTypeDisplayContext dlMimeTypeDisplayContext = (DLMimeTypeDisplayContext)request.getAttribute(JournalItemSelectorWebKeys.DL_MIME_TYPE_DISPLAY_CONTEXT);
JournalItemSelectorViewDisplayContext journalItemSelectorViewDisplayContext = (JournalItemSelectorViewDisplayContext)request.getAttribute(JournalItemSelectorWebKeys.JOURNAL_ITEM_SELECTOR_VIEW_DISPLAY_CONTEXT);
%>

<liferay-item-selector:repository-entry-browser
	dlMimeTypeDisplayContext="<%= dlMimeTypeDisplayContext %>"
	emptyResultsMessage='<%= LanguageUtil.get(resourceBundle, "there-are-no-journal-images") %>'
	itemSelectedEventName="<%= journalItemSelectorViewDisplayContext.getItemSelectedEventName() %>"
	itemSelectorReturnTypeResolver="<%= journalItemSelectorViewDisplayContext.getItemSelectorReturnTypeResolver() %>"
	portletURL="<%= journalItemSelectorViewDisplayContext.getPortletURL(request, liferayPortletResponse) %>"
	repositoryEntries="<%= journalItemSelectorViewDisplayContext.getFileEntries(request) %>"
	repositoryEntriesCount="<%= journalItemSelectorViewDisplayContext.getFileEntriesCount(request) %>"
	showBreadcrumb="<%= true %>"
	tabName="<%= journalItemSelectorViewDisplayContext.getTitle(locale) %>"
	uploadURL="<%= journalItemSelectorViewDisplayContext.getUploadURL(liferayPortletResponse) %>"
/>